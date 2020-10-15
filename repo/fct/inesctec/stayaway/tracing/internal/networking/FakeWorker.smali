.class public Lfct/inesctec/stayaway/tracing/internal/networking/FakeWorker;
.super Landroidx/work/Worker;
.source "FakeWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfct/inesctec/stayaway/tracing/internal/networking/FakeWorker$ClockImpl;,
        Lfct/inesctec/stayaway/tracing/internal/networking/FakeWorker$Clock;
    }
.end annotation


# static fields
.field private static final FACTOR_DAY_MILLIS:J = 0x5265c00L

.field private static final FACTOR_HOUR_MILLIS:J = 0x36ee80L

.field private static final FAKE_AUTH_CODE:Ljava/lang/String; = "000000000000"

.field private static final KEY_T_DUMMY:Ljava/lang/String; = "KEY_T_DUMMY"

.field private static final MAX_DELAY_HOURS:J = 0x30L

.field private static final SAMPLING_RATE:F

.field private static final TAG:Ljava/lang/String; = "FakeWorker"

.field private static final WORK_TAG:Ljava/lang/String; = "fct.inesctec.stayaway.FakeWorker"

.field public static clock:Lfct/inesctec/stayaway/tracing/internal/networking/FakeWorker$Clock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, ""

    const-string v1, "FALSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3e4ccccd    # 0.2f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    sput v0, Lfct/inesctec/stayaway/tracing/internal/networking/FakeWorker;->SAMPLING_RATE:F

    new-instance v0, Lfct/inesctec/stayaway/tracing/internal/networking/FakeWorker$ClockImpl;

    invoke-direct {v0}, Lfct/inesctec/stayaway/tracing/internal/networking/FakeWorker$ClockImpl;-><init>()V

    sput-object v0, Lfct/inesctec/stayaway/tracing/internal/networking/FakeWorker;->clock:Lfct/inesctec/stayaway/tracing/internal/networking/FakeWorker$Clock;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method

.method static synthetic access$000()F
    .locals 1

    sget v0, Lfct/inesctec/stayaway/tracing/internal/networking/FakeWorker;->SAMPLING_RATE:F

    return v0
.end method

.method private executeFakeRequest(Landroid/content/Context;)Z
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lfct/inesctec/stayaway/tracing/internal/networking/AuthCodeRepository;

    invoke-direct {v1, p1}, Lfct/inesctec/stayaway/tracing/internal/networking/AuthCodeRepository;-><init>(Landroid/content/Context;)V

    new-instance v2, Lfct/inesctec/stayaway/tracing/internal/networking/models/AuthenticationCodeRequestModel;

    const-string v3, "000000000000"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lfct/inesctec/stayaway/tracing/internal/networking/models/AuthenticationCodeRequestModel;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lfct/inesctec/stayaway/tracing/internal/networking/AuthCodeRepository;->getAccessTokenSync(Lfct/inesctec/stayaway/tracing/internal/networking/models/AuthenticationCodeRequestModel;)Lfct/inesctec/stayaway/tracing/internal/networking/models/AuthenticationCodeResponseModel;

    move-result-object v2

    invoke-virtual {v2}, Lfct/inesctec/stayaway/tracing/internal/networking/models/AuthenticationCodeResponseModel;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v5, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v6, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v7, Lorg/dpppt/android/sdk/models/ExposeeAuthMethodAuthorization;

    invoke-direct {p0, v3}, Lfct/inesctec/stayaway/tracing/internal/networking/FakeWorker;->getAuthorizationHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/dpppt/android/sdk/models/ExposeeAuthMethodAuthorization;-><init>(Ljava/lang/String;)V

    new-instance v8, Lfct/inesctec/stayaway/tracing/internal/networking/-$$Lambda$FakeWorker$6bGj2V1Oh1ieyI9Qoh_4SDUmByo;

    invoke-direct {v8, v5}, Lfct/inesctec/stayaway/tracing/internal/networking/-$$Lambda$FakeWorker$6bGj2V1Oh1ieyI9Qoh_4SDUmByo;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    new-instance v9, Lfct/inesctec/stayaway/tracing/internal/networking/-$$Lambda$FakeWorker$uvD0qFagmdI3tkjFXs6iUQhhC-4;

    invoke-direct {v9, v6, v5}, Lfct/inesctec/stayaway/tracing/internal/networking/-$$Lambda$FakeWorker$uvD0qFagmdI3tkjFXs6iUQhhC-4;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {p1, v7, v8, v9}, Lorg/dpppt/android/sdk/DP3T;->sendFakeInfectedRequest(Landroid/content/Context;Lorg/dpppt/android/sdk/models/ExposeeAuthMethod;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->await()V

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lfct/inesctec/stayaway/tracing/internal/networking/errors/ResponseError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_0

    return v0

    :cond_0
    return v4

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    :goto_0
    const-string v2, "FakeWorker"

    const-string v3, "fake request failed"

    invoke-static {v2, v3, v1}, Lorg/dpppt/android/sdk/internal/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
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

.method static synthetic lambda$executeFakeRequest$0(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method static synthetic lambda$executeFakeRequest$1(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public static safeStartFakeWorker(Landroid/content/Context;)V
    .locals 6

    invoke-static {p0}, Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;->getInstance(Landroid/content/Context;)Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;

    move-result-object v0

    invoke-virtual {v0}, Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;->getTDummy()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    sget-object v2, Lfct/inesctec/stayaway/tracing/internal/networking/FakeWorker;->clock:Lfct/inesctec/stayaway/tracing/internal/networking/FakeWorker$Clock;

    invoke-interface {v2}, Lfct/inesctec/stayaway/tracing/internal/networking/FakeWorker$Clock;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lfct/inesctec/stayaway/tracing/internal/networking/FakeWorker;->clock:Lfct/inesctec/stayaway/tracing/internal/networking/FakeWorker$Clock;

    invoke-interface {v4}, Lfct/inesctec/stayaway/tracing/internal/networking/FakeWorker$Clock;->syncInterval()J

    move-result-wide v4

    add-long v0, v2, v4

    invoke-static {p0}, Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;->getInstance(Landroid/content/Context;)Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;->setTDummy(J)V

    :cond_0
    sget-object v2, Landroidx/work/ExistingWorkPolicy;->KEEP:Landroidx/work/ExistingWorkPolicy;

    invoke-static {p0, v2, v0, v1}, Lfct/inesctec/stayaway/tracing/internal/networking/FakeWorker;->startFakeWorker(Landroid/content/Context;Landroidx/work/ExistingWorkPolicy;J)V

    return-void
.end method

.method private static startFakeWorker(Landroid/content/Context;Landroidx/work/ExistingWorkPolicy;J)V
    .locals 10

    sget-object v0, Lfct/inesctec/stayaway/tracing/internal/networking/FakeWorker;->clock:Lfct/inesctec/stayaway/tracing/internal/networking/FakeWorker$Clock;

    invoke-interface {v0}, Lfct/inesctec/stayaway/tracing/internal/networking/FakeWorker$Clock;->currentTimeMillis()J

    move-result-wide v0

    sub-long v2, p2, v0

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    long-to-double v4, v2

    const-wide v6, 0x4194997000000000L    # 8.64E7

    div-double/2addr v4, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "scheduled for execution in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, " days"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "FakeWorker"

    invoke-static {v7, v6}, Lorg/dpppt/android/sdk/internal/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Landroidx/work/Constraints$Builder;

    invoke-direct {v6}, Landroidx/work/Constraints$Builder;-><init>()V

    sget-object v7, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    invoke-virtual {v6, v7}, Landroidx/work/Constraints$Builder;->setRequiredNetworkType(Landroidx/work/NetworkType;)Landroidx/work/Constraints$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/work/Constraints$Builder;->build()Landroidx/work/Constraints;

    move-result-object v6

    new-instance v7, Landroidx/work/OneTimeWorkRequest$Builder;

    const-class v8, Lfct/inesctec/stayaway/tracing/internal/networking/FakeWorker;

    invoke-direct {v7, v8}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v7, v6}, Landroidx/work/OneTimeWorkRequest$Builder;->setConstraints(Landroidx/work/Constraints;)Landroidx/work/WorkRequest$Builder;

    move-result-object v7

    check-cast v7, Landroidx/work/OneTimeWorkRequest$Builder;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v2, v3, v8}, Landroidx/work/OneTimeWorkRequest$Builder;->setInitialDelay(JLjava/util/concurrent/TimeUnit;)Landroidx/work/WorkRequest$Builder;

    move-result-object v7

    check-cast v7, Landroidx/work/OneTimeWorkRequest$Builder;

    new-instance v8, Landroidx/work/Data$Builder;

    invoke-direct {v8}, Landroidx/work/Data$Builder;-><init>()V

    const-string v9, "KEY_T_DUMMY"

    invoke-virtual {v8, v9, p2, p3}, Landroidx/work/Data$Builder;->putLong(Ljava/lang/String;J)Landroidx/work/Data$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/work/OneTimeWorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    move-result-object v7

    check-cast v7, Landroidx/work/OneTimeWorkRequest$Builder;

    const-string v8, "fct.inesctec.stayaway.FakeWorker"

    invoke-virtual {v7, v8}, Landroidx/work/OneTimeWorkRequest$Builder;->addTag(Ljava/lang/String;)Landroidx/work/WorkRequest$Builder;

    move-result-object v7

    check-cast v7, Landroidx/work/OneTimeWorkRequest$Builder;

    invoke-virtual {v7}, Landroidx/work/OneTimeWorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object v7

    check-cast v7, Landroidx/work/OneTimeWorkRequest;

    invoke-static {p0}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v9

    invoke-virtual {v9, v8, p1, v7}, Landroidx/work/WorkManager;->enqueueUniqueWork(Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Landroidx/work/OneTimeWorkRequest;)Landroidx/work/Operation;

    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 7

    sget-object v0, Lfct/inesctec/stayaway/tracing/internal/networking/FakeWorker;->clock:Lfct/inesctec/stayaway/tracing/internal/networking/FakeWorker$Clock;

    invoke-interface {v0}, Lfct/inesctec/stayaway/tracing/internal/networking/FakeWorker$Clock;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lfct/inesctec/stayaway/tracing/internal/networking/FakeWorker;->getInputData()Landroidx/work/Data;

    move-result-object v2

    const-string v3, "KEY_T_DUMMY"

    invoke-virtual {v2, v3, v0, v1}, Landroidx/work/Data;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    :goto_0
    cmp-long v4, v2, v0

    if-gez v4, :cond_2

    const-string v4, "FakeWorker"

    const-string v5, "start"

    invoke-static {v4, v5}, Lorg/dpppt/android/sdk/internal/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 v5, 0xa4cb800

    sub-long v5, v0, v5

    cmp-long v5, v2, v5

    if-ltz v5, :cond_1

    invoke-virtual {p0}, Lfct/inesctec/stayaway/tracing/internal/networking/FakeWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "fake"

    invoke-static {v5, v6}, Lorg/dpppt/android/sdk/DP3T;->addWorkerStartedToHistory(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lfct/inesctec/stayaway/tracing/internal/networking/FakeWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5}, Lfct/inesctec/stayaway/tracing/internal/networking/FakeWorker;->executeFakeRequest(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v6, "finished with success"

    invoke-static {v4, v6}, Lorg/dpppt/android/sdk/internal/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v6, "failed"

    invoke-static {v4, v6}, Lorg/dpppt/android/sdk/internal/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->retry()Landroidx/work/ListenableWorker$Result;

    move-result-object v4

    return-object v4

    :cond_1
    const-string v5, "outdated request is dropped."

    invoke-static {v4, v5}, Lorg/dpppt/android/sdk/internal/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    sget-object v4, Lfct/inesctec/stayaway/tracing/internal/networking/FakeWorker;->clock:Lfct/inesctec/stayaway/tracing/internal/networking/FakeWorker$Clock;

    invoke-interface {v4}, Lfct/inesctec/stayaway/tracing/internal/networking/FakeWorker$Clock;->syncInterval()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {p0}, Lfct/inesctec/stayaway/tracing/internal/networking/FakeWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;->getInstance(Landroid/content/Context;)Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;->setTDummy(J)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lfct/inesctec/stayaway/tracing/internal/networking/FakeWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroidx/work/ExistingWorkPolicy;->APPEND:Landroidx/work/ExistingWorkPolicy;

    invoke-static {v4, v5, v2, v3}, Lfct/inesctec/stayaway/tracing/internal/networking/FakeWorker;->startFakeWorker(Landroid/content/Context;Landroidx/work/ExistingWorkPolicy;J)V

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v4

    return-object v4
.end method
