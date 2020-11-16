<template>
  <v-dialog v-model="show" max-width="600px">
    <v-toolbar dark color="#00ABD1" dense text>
      <v-toolbar-title class="white--text">Ajouter un resultat</v-toolbar-title>
      <v-spacer></v-spacer>
      <v-btn icon @click.native="close">
        <v-icon large>mdi-close</v-icon>
      </v-btn>
    </v-toolbar>
    <v-card>
      <v-card-text>
        <v-container>
          <v-row>
            <v-col cols="12">
              <v-form
                ref="form"
                v-model="valid"
                lazy-validation
              >
                <v-text-field
                  v-model="resultat"
                  label="veuillez saisir le resultat de l'examen"
                  required
                ></v-text-field>
              </v-form>
            </v-col>
          </v-row>
        </v-container>
      </v-card-text>
      <v-card-actions class="pt-0">
        <v-spacer/>
        <v-btn
          color="#00ABD1"
          dark
          @click.native="addResultat()">
          valider
        </v-btn>
      </v-card-actions>
    </v-card>
  </v-dialog>
</template>

<script>
export default {
  name: "AddResultat",

  data: () => ({
    show: false,
    id: null,
    resultat: null,
    valid: true,
  }),

  methods: {
    open(id) {
      this.show = true;
      this.id = id;
    },

    close() {
      this.reset();
      this.show = false;
    },

    reset() {
      this.$refs.form.reset()
    },

    async addResultat() {
      if (!(!!this.resultat)) {
        this.$toast.error("vous devez remplir le champs résultat");
        return;
      }
      await this.$axios({
        method: 'put',
        url: 'examen/add/result/',
        data: {
          id: this.id,
          resultat: this.resultat,
        }
      })
        .catch(error => {
          this.$toast.error(error.response.error);
        });

      this.$emit('reload-examens');
      this.$toast.success('Le résultat à bien été enregistré !');
      this.close();
    },

  },
}
</script>
