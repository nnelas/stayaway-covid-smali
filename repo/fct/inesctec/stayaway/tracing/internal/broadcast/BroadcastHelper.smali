.class public Lfct/inesctec/stayaway/tracing/internal/broadcast/BroadcastHelper;
.super Ljava/lang/Object;
.source "BroadcastHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactContext;->hasActiveCatalystInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-virtual {p0, v0}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-interface {v0, p1, p2}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static sendUpdateBroadcast(Landroid/content/Context;)V
    .locals 4

    invoke-static {p0}, Lorg/dpppt/android/sdk/DP3T;->getStatus(Landroid/content/Context;)Lorg/dpppt/android/sdk/TracingStatus;

    move-result-object v0

    invoke-static {}, Lfct/inesctec/stayaway/tracing/TracingManagerModule;->getReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v1

    invoke-static {v0}, Lfct/inesctec/stayaway/tracing/internal/util/WritableMapHelper;->wrapTracingStatus(Lorg/dpppt/android/sdk/TracingStatus;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    const-string v3, "fct.inesctec.stayaway.android.sdk.UPDATE_EVENT"

    invoke-static {v1, v3, v2}, Lfct/inesctec/stayaway/tracing/internal/broadcast/BroadcastHelper;->sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
