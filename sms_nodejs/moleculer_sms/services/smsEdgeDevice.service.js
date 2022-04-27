"use strict";

const DbMixin = require("../mixins/db.mixin");

/**
 * @typedef {import('moleculer').Context} Context Moleculer's Context
 */

module.exports = {
	name: "edgeDevice",
	// version: 1

	/**
	 * Mixins
	 */
	mixins: [DbMixin("edgeDevice")],

	/**
	 * Settings
	 */
	settings: {
		// Available fields in the responses
		fields: [
			"_id",
			"deviceID",
			"deviceType",
			"ownerID",
			"zoneID",
			"receiverID",
			"state",
			"lastUpdated",
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
				{ deviceID: "218000000001", deviceType : "EMS GTI 5.0", ownerID : "THWC", zoneID : "THOA", receiverID : "CSV-R0123456", state : "draft", lastUpdated : "18/03/2020" },
				{ deviceID: "218000000002", deviceType : "EMS GTI 5.0", ownerID : "THWC", zoneID : "THOA", receiverID : "CSV-R0123456", state : "draft", lastUpdated : "18/03/2020" },
				{ deviceID: "218000000003", deviceType : "EMS GTI 5.0", ownerID : "THWC", zoneID : "THOA", receiverID : "CSV-R0123456", state : "draft", lastUpdated : "18/03/2020" },
				{ deviceID: "218000000004", deviceType : "EMS GTI 5.0", ownerID : "THWC", zoneID : "THOA", receiverID : "CSV-R0123456", state : "draft", lastUpdated : "18/03/2020" },
				{ deviceID: "218000000005", deviceType : "EMS GTI 5.0", ownerID : "THWC", zoneID : "THOA", receiverID : "CSV-R0123456", state : "draft", lastUpdated : "18/03/2020" },
				{ deviceID: "218000000006", deviceType : "EMS GTI 5.0", ownerID : "THWC", zoneID : "THOA", receiverID : "CSV-R0123456", state : "draft", lastUpdated : "18/03/2020" },
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
