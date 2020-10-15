.class public Lfct/inesctec/stayaway/tracing/internal/broadcast/BroadcastHelper;
.super Ljava/lang/Object;
.source "BroadcastHelper.java"


# direct methods
.method private static sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContext;->hasActiveCatalystInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-virtual {p0, v0}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object p0

    check-cast p0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-interface {p0, p1, p2}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static sendUpdateBroadcast(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lorg/dpppt/android/sdk/DP3T;->getStatus(Landroid/content/Context;)Lorg/dpppt/android/sdk/TracingStatus;

    move-result-object p0

    invoke-static {}, Lfct/inesctec/stayaway/tracing/TracingManagerModule;->getReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    invoke-static {p0}, Lfct/inesctec/stayaway/tracing/internal/util/WritableMapHelper;->wrapTracingStatus(Lorg/dpppt/android/sdk/TracingStatus;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p0

    const-string v1, "fct.inesctec.stayaway.android.sdk.UPDATE_EVENT"

    invoke-static {v0, v1, p0}, Lfct/inesctec/stayaway/tracing/internal/broadcast/BroadcastHelper;->sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
