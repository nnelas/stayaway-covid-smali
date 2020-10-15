.class public Lfct/inesctec/stayaway/tracing/TracingManagerModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "TracingManagerModule.java"


# static fields
.field private static final BATTERY_PERMISSION_DENIED:Ljava/lang/String; = "BATTERY_PERMISSION_DENIED"

.field private static final BATTERY_PERMISSION_GRANTED:Ljava/lang/String; = "BATTERY_PERMISSION_GRANTED"

.field private static final BLUETOOTH_SERVICE_DENIED:Ljava/lang/String; = "BLUETOOTH_SERVICE_DENIED"

.field private static final BLUETOOTH_SERVICE_GRANTED:Ljava/lang/String; = "BLUETOOTH_SERVICE_GRANTED"

.field private static final EN_CANCELLED:Ljava/lang/String; = "EN_CANCELLED"

.field private static final EN_FAILED:Ljava/lang/String; = "EN_FAILED"

.field private static final EN_SUCCEEDED:Ljava/lang/String; = "EN_SUCCEEDED"

.field private static final INVALID_CODE_EXCEPTION:Ljava/lang/Integer;

.field private static final LOCATION_SERVICE_DENIED:Ljava/lang/String; = "LOCATION_SERVICE_DENIED"

.field private static final LOCATION_SERVICE_GRANTED:Ljava/lang/String; = "LOCATION_SERVICE_GRANTED"

.field private static final REQUEST_BLUETOOTH_SERVICE_CODE:I = 0x14a

.field private static final REQUEST_IGNORE_BATTERY_OPTIMIZATIONS_CODE:I = 0x1a4

.field private static final REQUEST_LOCATION_SERVICE_CODE:I = 0x1fe

.field private static final TAG:Ljava/lang/String; = "TracingManager"

.field private static final TIMEOUT_VALID_CODE:J = 0x493e0L

.field private static final UNKNOWN_EXCEPTION:Ljava/lang/Integer;

.field private static final UNKNOWN_HOST_EXCEPTION:Ljava/lang/Integer;

.field public static final UPDATE_EVENT:Ljava/lang/String; = "fct.inesctec.stayaway.android.sdk.UPDATE_EVENT"

.field private static pendingBatteryPromise:Lcom/facebook/react/bridge/Promise;

.field private static pendingBluetoothPromise:Lcom/facebook/react/bridge/Promise;

.field private static pendingLocationPromise:Lcom/facebook/react/bridge/Promise;

.field private static reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field private static updateEventBroadcasterReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lfct/inesctec/stayaway/tracing/TracingManagerModule;->UNKNOWN_HOST_EXCEPTION:Ljava/lang/Integer;

    const/16 v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lfct/inesctec/stayaway/tracing/TracingManagerModule;->UNKNOWN_EXCEPTION:Ljava/lang/Integer;

    const/16 v0, 0xf

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lfct/inesctec/stayaway/tracing/TracingManagerModule;->INVALID_CODE_EXCEPTION:Ljava/lang/Integer;

    return-void
.end method

.method constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    sput-object p1, Lfct/inesctec/stayaway/tracing/TracingManagerModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lfct/inesctec/stayaway/tracing/TracingManagerModule;->UNKNOWN_EXCEPTION:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$100(Lfct/inesctec/stayaway/tracing/TracingManagerModule;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lfct/inesctec/stayaway/tracing/TracingManagerModule;->getAuthorizationHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lfct/inesctec/stayaway/tracing/TracingManagerModule;Ljava/util/Date;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lfct/inesctec/stayaway/tracing/TracingManagerModule;->informExposed(Ljava/util/Date;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lfct/inesctec/stayaway/tracing/TracingManagerModule;->INVALID_CODE_EXCEPTION:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lfct/inesctec/stayaway/tracing/TracingManagerModule;->UNKNOWN_HOST_EXCEPTION:Ljava/lang/Integer;

    return-object v0
.end method

.method private authenticateInput(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 4

    invoke-virtual {p0}, Lfct/inesctec/stayaway/tracing/TracingManagerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    new-instance v1, Lfct/inesctec/stayaway/tracing/internal/networking/AuthCodeRepository;

    invoke-direct {v1, v0}, Lfct/inesctec/stayaway/tracing/internal/networking/AuthCodeRepository;-><init>(Landroid/content/Context;)V

    new-instance v2, Lfct/inesctec/stayaway/tracing/internal/networking/models/AuthenticationCodeRequestModel;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lfct/inesctec/stayaway/tracing/internal/networking/models/AuthenticationCodeRequestModel;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lfct/inesctec/stayaway/tracing/TracingManagerModule$2;

    invoke-direct {v3, p0, v0, p1, p2}, Lfct/inesctec/stayaway/tracing/TracingManagerModule$2;-><init>(Lfct/inesctec/stayaway/tracing/TracingManagerModule;Landroid/content/Context;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {v1, v2, v3}, Lfct/inesctec/stayaway/tracing/internal/networking/AuthCodeRepository;->getAccessToken(Lfct/inesctec/stayaway/tracing/internal/networking/models/AuthenticationCodeRequestModel;Lorg/dpppt/android/sdk/backend/ResponseCallback;)V

    return-void
.end method

.method private getAuthorizationHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bearer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getReactContext()Lcom/facebook/react/bridge/ReactContext;
    .locals 1

    sget-object v0, Lfct/inesctec/stayaway/tracing/TracingManagerModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-object v0
.end method

.method private informExposed(Ljava/util/Date;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 4

    invoke-virtual {p0}, Lfct/inesctec/stayaway/tracing/TracingManagerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {p0}, Lfct/inesctec/stayaway/tracing/TracingManagerModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lorg/dpppt/android/sdk/models/ExposeeAuthMethodAuthorization;

    invoke-direct {v2, p2}, Lorg/dpppt/android/sdk/models/ExposeeAuthMethodAuthorization;-><init>(Ljava/lang/String;)V

    new-instance v3, Lfct/inesctec/stayaway/tracing/TracingManagerModule$1;

    invoke-direct {v3, p0, v0, p3}, Lfct/inesctec/stayaway/tracing/TracingManagerModule$1;-><init>(Lfct/inesctec/stayaway/tracing/TracingManagerModule;Landroid/content/Context;Lcom/facebook/react/bridge/Promise;)V

    invoke-static {v1, p1, v2, v3}, Lorg/dpppt/android/sdk/DP3T;->sendIAmInfected(Landroid/app/Activity;Ljava/util/Date;Lorg/dpppt/android/sdk/models/ExposeeAuthMethod;Lorg/dpppt/android/sdk/backend/ResponseCallback;)V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4

    const-string v0, ""

    const-string v1, "FALSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lorg/dpppt/android/sdk/internal/logger/LogLevel;->DEBUG:Lorg/dpppt/android/sdk/internal/logger/LogLevel;

    invoke-static {p0, v2}, Lorg/dpppt/android/sdk/internal/logger/Logger;->init(Landroid/content/Context;Lorg/dpppt/android/sdk/internal/logger/LogLevel;)V

    invoke-static {p0}, Lfct/inesctec/stayaway/tracing/internal/networking/CertificatePinning;->initDebug(Landroid/content/Context;)V

    :cond_0
    new-instance v2, Lfct/inesctec/stayaway/tracing/internal/broadcast/UpdateEventBroadcastReceiver;

    invoke-direct {v2}, Lfct/inesctec/stayaway/tracing/internal/broadcast/UpdateEventBroadcastReceiver;-><init>()V

    sput-object v2, Lfct/inesctec/stayaway/tracing/TracingManagerModule;->updateEventBroadcasterReceiver:Landroid/content/BroadcastReceiver;

    nop

    invoke-static {}, Lorg/dpppt/android/sdk/DP3T;->getUpdateIntentFilter()Landroid/content/IntentFilter;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {p0}, Lfct/inesctec/stayaway/tracing/TracingManagerModule;->initDP3T(Landroid/content/Context;)V

    const-string v2, "TRUE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lfct/inesctec/stayaway/tracing/internal/networking/FakeWorker;->safeStartFakeWorker(Landroid/content/Context;)V

    invoke-static {p0}, Lfct/inesctec/stayaway/tracing/internal/networking/ConfigWorker;->scheduleConfigWorkerIfOutdated(Landroid/content/Context;)V

    :cond_1
    const-string v0, "TracingManager"

    const-string v1, "Tracing Manager initiated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static initDP3T(Landroid/content/Context;)V
    .locals 5

    const-string v0, ""

    invoke-static {v0}, Lorg/dpppt/android/sdk/util/SignatureUtil;->getPublicKeyFromBase64OrThrow(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v1

    new-instance v2, Lorg/dpppt/android/sdk/models/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0, v0}, Lorg/dpppt/android/sdk/models/ApplicationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "TRUE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p0, v2, v1, v0}, Lorg/dpppt/android/sdk/DP3T;->init(Landroid/content/Context;Lorg/dpppt/android/sdk/models/ApplicationInfo;Ljava/security/PublicKey;Z)V

    invoke-static {}, Lfct/inesctec/stayaway/tracing/internal/networking/CertificatePinning;->getCertificatePinner()Lokhttp3/CertificatePinner;

    move-result-object v0

    invoke-static {v0}, Lorg/dpppt/android/sdk/DP3T;->setCertificatePinner(Lokhttp3/CertificatePinner;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "1.0.5-debug"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v3, 0x1752dad1c65L

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ";Android;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/dpppt/android/sdk/DP3T;->setUserAgent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$start$0(Lcom/facebook/react/bridge/Promise;)V
    .locals 2

    const-string v0, "TracingManager"

    const-string v1, "EN started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "EN_SUCCEEDED"

    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$start$1(Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EN failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "TracingManager"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EN_FAILED"

    invoke-interface {p0, v1, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$start$2(Lcom/facebook/react/bridge/Promise;)V
    .locals 2

    const-string v0, "TracingManager"

    const-string v1, "EN cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "EN_CANCELLED"

    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, -0x1

    const/16 v1, 0x1a4

    if-ne p0, v1, :cond_1

    sget-object v1, Lfct/inesctec/stayaway/tracing/TracingManagerModule;->pendingBatteryPromise:Lcom/facebook/react/bridge/Promise;

    if-eqz v1, :cond_5

    if-ne p1, v0, :cond_0

    const-string v0, "BATTERY_PERMISSION_GRANTED"

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_5

    const-string v0, "BATTERY_PERMISSION_DENIED"

    const-string v2, "Permission for ignoring battery optimization denied."

    invoke-interface {v1, v0, v2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x1fe

    if-ne p0, v1, :cond_3

    sget-object v1, Lfct/inesctec/stayaway/tracing/TracingManagerModule;->pendingLocationPromise:Lcom/facebook/react/bridge/Promise;

    if-eqz v1, :cond_5

    if-ne p1, v0, :cond_2

    const-string v0, "LOCATION_SERVICE_GRANTED"

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_5

    const-string v0, "LOCATION_SERVICE_DENIED"

    const-string v2, "Permission for location access denied."

    invoke-interface {v1, v0, v2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x14a

    if-ne p0, v1, :cond_5

    sget-object v1, Lfct/inesctec/stayaway/tracing/TracingManagerModule;->pendingBluetoothPromise:Lcom/facebook/react/bridge/Promise;

    if-eqz v1, :cond_5

    if-ne p1, v0, :cond_4

    const-string v0, "BLUETOOTH_SERVICE_GRANTED"

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    if-nez p1, :cond_5

    const-string v0, "BLUETOOTH_SERVICE_DENIED"

    const-string v2, "Permission for bluetooth access denied."

    invoke-interface {v1, v0, v2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public static terminate(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lfct/inesctec/stayaway/tracing/TracingManagerModule;->updateEventBroadcasterReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public exposed(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 9
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    invoke-virtual {p0}, Lfct/inesctec/stayaway/tracing/TracingManagerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-static {v0}, Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;->getInstance(Landroid/content/Context;)Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;

    move-result-object v1

    invoke-virtual {v1}, Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;->getLastInformRequestTime()J

    move-result-wide v2

    invoke-virtual {v1}, Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;->getLastInformToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    const-wide/32 v7, 0x493e0

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    if-eqz v4, :cond_0

    invoke-static {v4}, Lfct/inesctec/stayaway/tracing/internal/util/JwtUtil;->getOnsetDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-direct {p0, v4}, Lfct/inesctec/stayaway/tracing/TracingManagerModule;->getAuthorizationHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6, p2}, Lfct/inesctec/stayaway/tracing/TracingManagerModule;->informExposed(Ljava/util/Date;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lfct/inesctec/stayaway/tracing/TracingManagerModule;->authenticateInput(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    :goto_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "TracingManager"

    return-object v0
.end method

.method public getStatus(Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    invoke-virtual {p0}, Lfct/inesctec/stayaway/tracing/TracingManagerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-static {v0}, Lorg/dpppt/android/sdk/DP3T;->getStatus(Landroid/content/Context;)Lorg/dpppt/android/sdk/TracingStatus;

    move-result-object v0

    invoke-static {v0}, Lfct/inesctec/stayaway/tracing/internal/util/WritableMapHelper;->wrapTracingStatus(Lorg/dpppt/android/sdk/TracingStatus;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public hasSpecialBatteryOptimizationSystem(Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    invoke-static {}, Lfct/inesctec/stayaway/tracing/internal/util/SpecialBatterySystemHelper;->hasSpecialBatterySystem()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public isBluetoothServiceEnabled(Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    invoke-static {}, Lfct/inesctec/stayaway/tracing/internal/util/DeviceFeatureHelper;->isBluetoothEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public isIgnoringBatteryOptimizationsPermission(Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    invoke-virtual {p0}, Lfct/inesctec/stayaway/tracing/TracingManagerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-static {v0}, Lfct/inesctec/stayaway/tracing/internal/util/DeviceFeatureHelper;->isBatteryOptimizationDeactivated(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public isLocationServiceEnabled(Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    invoke-virtual {p0}, Lfct/inesctec/stayaway/tracing/TracingManagerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-static {v0}, Lorg/dpppt/android/sdk/internal/util/LocationServiceUtil;->isLocationEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public isTracingEnabled(Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    invoke-virtual {p0}, Lfct/inesctec/stayaway/tracing/TracingManagerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-static {v0}, Lorg/dpppt/android/sdk/DP3T;->isTracingEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public openBatteryOptimizationSettings(Lcom/facebook/react/bridge/Promise;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    invoke-virtual {p0}, Lfct/inesctec/stayaway/tracing/TracingManagerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {p0}, Lfct/inesctec/stayaway/tracing/TracingManagerModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.settings.IGNORE_BATTERY_OPTIMIZATION_SETTINGS"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const-string v3, "BATTERY_PERMISSION_GRANTED"

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public requestBluetoothService(Lcom/facebook/react/bridge/Promise;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    invoke-virtual {p0}, Lfct/inesctec/stayaway/tracing/TracingManagerModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    sput-object p1, Lfct/inesctec/stayaway/tracing/TracingManagerModule;->pendingBluetoothPromise:Lcom/facebook/react/bridge/Promise;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lfct/inesctec/stayaway/tracing/TracingManagerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/react/bridge/ReactApplicationContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    const/16 v2, 0x14a

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public requestIgnoreBatteryOptimizationsPermission(Lcom/facebook/react/bridge/Promise;)V
    .locals 6
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    invoke-virtual {p0}, Lfct/inesctec/stayaway/tracing/TracingManagerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {p0}, Lfct/inesctec/stayaway/tracing/TracingManagerModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    sput-object p1, Lfct/inesctec/stayaway/tracing/TracingManagerModule;->pendingBatteryPromise:Lcom/facebook/react/bridge/Promise;

    invoke-static {v0}, Lfct/inesctec/stayaway/tracing/internal/util/DeviceFeatureHelper;->isBatteryOptimizationDeactivated(Landroid/content/Context;)Z

    move-result v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    if-eqz v2, :cond_0

    const-string v4, "android.settings.IGNORE_BATTERY_OPTIMIZATION_SETTINGS"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const-string v4, "BATTERY_PERMISSION_GRANTED"

    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v4, "android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v4, 0x1a4

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public requestLocationService(Lcom/facebook/react/bridge/Promise;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    invoke-virtual {p0}, Lfct/inesctec/stayaway/tracing/TracingManagerModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    sput-object p1, Lfct/inesctec/stayaway/tracing/TracingManagerModule;->pendingLocationPromise:Lcom/facebook/react/bridge/Promise;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lfct/inesctec/stayaway/tracing/TracingManagerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/react/bridge/ReactApplicationContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1fe

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public resetExposureDays(Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    invoke-virtual {p0}, Lfct/inesctec/stayaway/tracing/TracingManagerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-static {v0}, Lorg/dpppt/android/sdk/DP3T;->resetExposureDays(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public resetInfectionStatus(Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    invoke-virtual {p0}, Lfct/inesctec/stayaway/tracing/TracingManagerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-static {v0}, Lorg/dpppt/android/sdk/DP3T;->getIAmInfectedIsResettable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lorg/dpppt/android/sdk/DP3T;->resetInfectionStatus(Landroid/content/Context;)V

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public start(Lcom/facebook/react/bridge/Promise;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    invoke-virtual {p0}, Lfct/inesctec/stayaway/tracing/TracingManagerModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lfct/inesctec/stayaway/tracing/-$$Lambda$TracingManagerModule$nXWvvP-ONp3nseLjlPzYYhwlQSE;

    invoke-direct {v1, p1}, Lfct/inesctec/stayaway/tracing/-$$Lambda$TracingManagerModule$nXWvvP-ONp3nseLjlPzYYhwlQSE;-><init>(Lcom/facebook/react/bridge/Promise;)V

    new-instance v2, Lfct/inesctec/stayaway/tracing/-$$Lambda$TracingManagerModule$wf85a2oUe1K1zeKe7nvO3YoWYFg;

    invoke-direct {v2, p1}, Lfct/inesctec/stayaway/tracing/-$$Lambda$TracingManagerModule$wf85a2oUe1K1zeKe7nvO3YoWYFg;-><init>(Lcom/facebook/react/bridge/Promise;)V

    new-instance v3, Lfct/inesctec/stayaway/tracing/-$$Lambda$TracingManagerModule$W1zRlrJYE-zhc_dkp--6Yd48QCk;

    invoke-direct {v3, p1}, Lfct/inesctec/stayaway/tracing/-$$Lambda$TracingManagerModule$W1zRlrJYE-zhc_dkp--6Yd48QCk;-><init>(Lcom/facebook/react/bridge/Promise;)V

    invoke-static {v0, v1, v2, v3}, Lorg/dpppt/android/sdk/DP3T;->start(Landroid/app/Activity;Ljava/lang/Runnable;Landroidx/core/util/Consumer;Ljava/lang/Runnable;)V

    return-void
.end method

.method public stop(Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    invoke-virtual {p0}, Lfct/inesctec/stayaway/tracing/TracingManagerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-static {v0}, Lorg/dpppt/android/sdk/DP3T;->stop(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public sync(Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    invoke-virtual {p0}, Lfct/inesctec/stayaway/tracing/TracingManagerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-static {v0}, Lorg/dpppt/android/sdk/DP3T;->sync(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method
