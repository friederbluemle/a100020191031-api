// @flow
export default class WalmartItemEvents {
    constructor(bridge) {
        this._bridge = bridge;
    }

            addItemAddedEventListener( eventListener: Function): string {
            return   this._bridge.registerEventListener("com.a100020191031Api.ern.api.event.itemAdded", eventListener);
            }

            removeItemAddedEventListener( uuid: string): any {
            return   this._bridge.removeEventListener(uuid);
            }

//------------------------------------------------------------------------------------------------------------------------------------

            emitItemAdded(itemId: string): void {
                    return this._bridge.emitEvent("com.a100020191031Api.ern.api.event.itemAdded", { data:itemId });


            }
}
