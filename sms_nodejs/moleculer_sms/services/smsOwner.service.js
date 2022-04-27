"use strict";

const DbMixin = require("../mixins/db.mixin");

/**
 * @typedef {import('moleculer').Context} Context Moleculer's Context
 */

module.exports = {
	name: "owner",
	// version: 1

	/**
	 * Mixins
	 */
	mixins: [DbMixin("owner")],

	/**
	 * Settings
	 */
	settings: {
		// Available fields in the responses
		fields: [
			"_id",
			"ownerID",
			"ownerName",
			"ownerInfo",
			"state",
		],

		// Validator for the `create` & `insert` actions.
		entityValidator: {
			// deviceID: "string|min:3",
		}
	},

	/**
	 * Action Hooks
	 */
	hooks: {
		before: {
			/**
			 * Register a before hook for the `create` action.
			 * It sets a default value for the quantity field.
			 *
			 * @param {Context} ctx
			 */
			create(ctx) {
				ctx.params.quantity = 0;
			}
		}
	},

	/**
	 * Actions
	 */
	actions: {
		/**
		 * The "moleculer-db" mixin registers the following actions:
		 *  - list
		 *  - find
		 *  - count
		 *  - create
		 *  - insert
		 *  - update
		 *  - remove
		 */

		// --- ADDITIONAL ACTIONS ---

	},

	/**
	 * Methods
	 */
	methods: {
		/**
		 * Loading sample data to the collection.
		 * It is called in the DB.mixin after the database
		 * connection establishing & the collection is empty.
		 */
		async seedDB() {
			await this.adapter.insertMany([
				{ownerID : "NDWC", ownerName : "Nam Dinh", ownerInfo : "Nam Dinh Water Group", state : "draft"},
				{ownerID : "NDWC", ownerName : "Nam Dinh", ownerInfo : "Nam Dinh Water Group", state : "draft"},
				{ownerID : "NDWC", ownerName : "Nam Dinh", ownerInfo : "Nam Dinh Water Group", state : "draft"},
				{ownerID : "NDWC", ownerName : "Nam Dinh", ownerInfo : "Nam Dinh Water Group", state : "draft"},
				{ownerID : "NDWC", ownerName : "Nam Dinh", ownerInfo : "Nam Dinh Water Group", state : "draft"},
				{ownerID : "NDWC", ownerName : "Nam Dinh", ownerInfo : "Nam Dinh Water Group", state : "draft"},
				{ownerID : "NDWC", ownerName : "Nam Dinh", ownerInfo : "Nam Dinh Water Group", state : "draft"},
			]);
		}
	},

	/**
	 * Fired after database connection establishing.
	 */
	async afterConnected() {
		// await this.adapter.collection.createIndex({ name: 1 });
	}
};
