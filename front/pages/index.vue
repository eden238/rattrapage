<template>
  <v-main>
    <v-container>

      <add-resultat
        ref="add-resultat"
        @reload-examens="getExamensByPatient"
      ></add-resultat>

      <v-card class="background-card">
        <v-card-text >
          <v-row align="center" justify="space-around">
            <v-col col="4">
              <h2>Liste des patients: </h2>
              <br>
              <v-autocomplete
                v-model="dataPatient.value"
                :items="dataPatient.items"
                :item-text="getItemText"
                item-value="id"
                outlined
                :label="dataPatient.label"
                :required="dataPatient.required"
              ></v-autocomplete>
            </v-col>
          </v-row>
        </v-card-text>
        <v-card-actions>
          <v-spacer></v-spacer>
          <v-btn
            @click="validate"
            color="#00ABD1"
            dark
          >
            valider
          </v-btn>
          <v-spacer></v-spacer>
        </v-card-actions>
      </v-card>
      <br>
      <v-card
        v-if="showExamens && examens.length > 0"
        class="background-card"
      >
        <v-card-title>Liste des examens en attente de resultat</v-card-title>
        <v-card-text>
         <v-row align="center" justify="end">
           <v-col cols="12">
             <v-text-field
               v-model="search"
               append-icon="mdi-magnify"
               label="Rechercher"
               hide-details
               outlined
               @click:row="showDialog"
             ></v-text-field>
           </v-col>
         </v-row>

          <v-data-table
            :headers="headers"
            :items="examens"
            :items-per-page="5"
            :search="search"
            :loading="loading"
            loading-text="Loading... Please wait"
            class="elevation-1"
            hide-default-footer
            @page-count="pageCount = $event"
          >
            <template v-slot:item.actions="{ item }">
              <v-btn
                color="#00ABD1"
                dark
                @click="showDialog(item)"
                fab
                small
              >
                <v-icon
                >
                  mdi-pencil
                </v-icon>
              </v-btn>
            </template>
          </v-data-table>
          <div class="text-center pt-2">
            <v-pagination
              color="#00ABD1"
              v-model="page"
              :length="pageCount"
            ></v-pagination>
          </div>
        </v-card-text>
      </v-card>

      <v-card
        class="border"
        v-if="examens.length === 0"
      >
        <v-container>
          <h4>Ce patient n'a aucun examen en attente de résultat. Veuillez en selectionnez un autre.</h4>
        </v-container>
      </v-card>
    </v-container>
  </v-main>
</template>

<script>
import AddResultat from "../components/addResultat";

export default {
  components: {
    AddResultat,
  },
  data : () => ({
    message : "",
    search: '',
    dataPatient : {
      value : "",
      label : "Veuillez selectionner un patient",
      items : [],
      required : true,
    },
    headers: [
      { text: 'Date de l\'examen', value: 'date' },
      { text: 'Type d\'examen', value: 'type' },
      { text: 'Action', value: 'actions', sortable: false,  align: 'center',},
    ],
    examens : [null],
    showExamens : false,
    loading : true,
    page: 1,
    pageCount: 0,
  }),

  mounted() {
    this.getPatient();
  },

  methods : {
    async getPatient (){
      this.dataPatient.items = (await this.$axios({
        method : "get",
        url : "patient/read/all"
      })).data;
    },

    async getExamensByPatient(){
      this.examens = (await this.$axios({
        method : "get",
        url : "examen/read/by/patient/" + this.dataPatient.value
      })).data;

      if (this.examens.length === 0){

      }
      this.examens.forEach(examen => {
        examen.date = this.$moment(examen.date).format("DD/MM/YYYY");
      });
    },

    getItemText(item){
      return `${item.nom} ${item.prenom}`;
    },

    async validate(){

      if (!(!!this.dataPatient.value)){
        this.$toast.error("Vous devez selectionner un client");
        return;
      }

      this.showExamens = true;
      this.loading = false;

      await this.getExamensByPatient();

      this.loading = false;
    },

    showDialog(row){
      this.$refs['add-resultat'].open(row.id);
    }
  }
}
</script>

<style scoped>
  .background-card{
    opacity: 0.9;
  }
</style>

