.class public Lfct/inesctec/stayaway/tracing/internal/networking/ConfigWorker;
.super Landroidx/work/Worker;
.source "ConfigWorker.java"


# static fields
.field private static final MAX_AGE_OF_CONFIG_FOR_RELOAD_AT_APP_START:J = 0xa4cb800L

.field private static final REPEAT_INTERVAL_CONFIG_DAYS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ConfigWorker"

.field private static final WORK_TAG:Ljava/lang/String; = "fct.inesctec.stayaway.ConfigWorker"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method

.method private cancelUpdateNotification(Landroid/content/Context;)V
    .locals 2

    nop

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private createUpdateNotification(Landroid/content/Context;)V
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-static {p1}, Lfct/inesctec/stayaway/tracing/internal/util/NotificationUtil;->createNotificationChannel(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "market://details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {p1, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    const-string v4, "contact-channel"

    invoke-direct {v3, p1, v4}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v4, 0x7f0e00b6

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    const v4, 0x7f0e00b5

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    new-instance v5, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v5}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    const v4, 0x7f07008e

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    nop

    const-string v4, "notification"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    const/16 v5, 0x2c

    invoke-virtual {v4, v5, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public static scheduleConfigWorkerIfOutdated(Landroid/content/Context;)V
    .locals 7

    invoke-static {p0}, Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;->getInstance(Landroid/content/Context;)Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;

    move-result-object v0

    invoke-virtual {v0}, Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;->getLastConfigLoadSuccess()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0xa4cb800

    sub-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;->getLastConfigLoadSuccessAppVersion()I

    move-result v1

    const/16 v2, 0x2743

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;->getLastConfigLoadSuccessSdkInt()I

    move-result v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eq v1, v2, :cond_1

    :cond_0
    new-instance v1, Landroidx/work/Constraints$Builder;

    invoke-direct {v1}, Landroidx/work/Constraints$Builder;-><init>()V

    sget-object v2, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    invoke-virtual {v1, v2}, Landroidx/work/Constraints$Builder;->setRequiredNetworkType(Landroidx/work/NetworkType;)Landroidx/work/Constraints$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/work/Constraints$Builder;->build()Landroidx/work/Constraints;

    move-result-object v1

    new-instance v2, Landroidx/work/PeriodicWorkRequest$Builder;

    const-class v3, Lfct/inesctec/stayaway/tracing/internal/networking/ConfigWorker;

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v2, v3, v4, v5, v6}, Landroidx/work/PeriodicWorkRequest$Builder;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {v2, v1}, Landroidx/work/PeriodicWorkRequest$Builder;->setConstraints(Landroidx/work/Constraints;)Landroidx/work/WorkRequest$Builder;

    move-result-object v2

    check-cast v2, Landroidx/work/PeriodicWorkRequest$Builder;

    invoke-virtual {v2}, Landroidx/work/PeriodicWorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object v2

    check-cast v2, Landroidx/work/PeriodicWorkRequest;

    invoke-static {p0}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v3

    sget-object v4, Landroidx/work/ExistingPeriodicWorkPolicy;->REPLACE:Landroidx/work/ExistingPeriodicWorkPolicy;

    const-string v5, "fct.inesctec.stayaway.ConfigWorker"

    invoke-virtual {v3, v5, v4, v2}, Landroidx/work/WorkManager;->enqueueUniquePeriodicWork(Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;Landroidx/work/PeriodicWorkRequest;)Landroidx/work/Operation;

    :cond_1
    return-void
.end method

.method private shouldBroadcastNotification(Lfct/inesctec/stayaway/tracing/internal/networking/models/VersionModel;)Z
    .locals 7

    new-instance v0, Lcom/g00fy2/versioncompare/Version;

    invoke-virtual {p1}, Lfct/inesctec/stayaway/tracing/internal/networking/models/VersionModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/g00fy2/versioncompare/Version;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lfct/inesctec/stayaway/tracing/internal/networking/models/VersionModel;->getBuild()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/g00fy2/versioncompare/Version;

    const-string v3, "1.0.5-debug"

    invoke-direct {v2, v3}, Lcom/g00fy2/versioncompare/Version;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x2743

    invoke-virtual {v0, v2}, Lcom/g00fy2/versioncompare/Version;->isHigherThan(Lcom/g00fy2/versioncompare/Version;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    return v5

    :cond_0
    invoke-virtual {v0, v2}, Lcom/g00fy2/versioncompare/Version;->isEqual(Lcom/g00fy2/versioncompare/Version;)Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    if-le v1, v3, :cond_1

    goto :goto_0

    :cond_1
    move v5, v6

    :goto_0
    return v5

    :cond_2
    return v6
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 3

    const-string v0, "ConfigWorker"

    const-string v1, "started"

    invoke-static {v0, v1}, Lorg/dpppt/android/sdk/internal/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lfct/inesctec/stayaway/tracing/internal/networking/ConfigWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "config"

    invoke-static {v1, v2}, Lorg/dpppt/android/sdk/DP3T;->addWorkerStartedToHistory(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lfct/inesctec/stayaway/tracing/internal/networking/ConfigWorker;->loadConfig()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lfct/inesctec/stayaway/tracing/internal/networking/errors/ResponseError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/dpppt/android/sdk/backend/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const-string v1, "finished with success"

    invoke-static {v0, v1}, Lorg/dpppt/android/sdk/internal/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    :goto_0
    const-string v2, "failed"

    invoke-static {v0, v2, v1}, Lorg/dpppt/android/sdk/internal/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->retry()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0
.end method

.method public loadConfig()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfct/inesctec/stayaway/tracing/internal/networking/errors/ResponseError;,
            Lorg/dpppt/android/sdk/backend/SignatureException;
        }
    .end annotation

    invoke-virtual {p0}, Lfct/inesctec/stayaway/tracing/internal/networking/ConfigWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    new-instance v0, Lfct/inesctec/stayaway/tracing/internal/networking/ConfigRepository;

    invoke-direct {v0, v6}, Lfct/inesctec/stayaway/tracing/internal/networking/ConfigRepository;-><init>(Landroid/content/Context;)V

    move-object v7, v0

    invoke-virtual {v7}, Lfct/inesctec/stayaway/tracing/internal/networking/ConfigRepository;->getConfig()Lfct/inesctec/stayaway/tracing/internal/networking/models/ConfigResponseModel;

    move-result-object v8

    invoke-virtual {v8}, Lfct/inesctec/stayaway/tracing/internal/networking/models/ConfigResponseModel;->getAndroidVersion()Lfct/inesctec/stayaway/tracing/internal/networking/models/VersionModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lfct/inesctec/stayaway/tracing/internal/networking/ConfigWorker;->shouldBroadcastNotification(Lfct/inesctec/stayaway/tracing/internal/networking/models/VersionModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v6}, Lfct/inesctec/stayaway/tracing/internal/networking/ConfigWorker;->createUpdateNotification(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v6}, Lfct/inesctec/stayaway/tracing/internal/networking/ConfigWorker;->cancelUpdateNotification(Landroid/content/Context;)V

    :goto_0
    nop

    invoke-virtual {v8}, Lfct/inesctec/stayaway/tracing/internal/networking/models/ConfigResponseModel;->getParameters()Lfct/inesctec/stayaway/tracing/internal/networking/models/ParametersModel;

    move-result-object v0

    invoke-virtual {v0}, Lfct/inesctec/stayaway/tracing/internal/networking/models/ParametersModel;->getLowerThreshold()I

    move-result v1

    invoke-virtual {v8}, Lfct/inesctec/stayaway/tracing/internal/networking/models/ConfigResponseModel;->getParameters()Lfct/inesctec/stayaway/tracing/internal/networking/models/ParametersModel;

    move-result-object v0

    invoke-virtual {v0}, Lfct/inesctec/stayaway/tracing/internal/networking/models/ParametersModel;->getHigherThreshold()I

    move-result v2

    invoke-virtual {v8}, Lfct/inesctec/stayaway/tracing/internal/networking/models/ConfigResponseModel;->getParameters()Lfct/inesctec/stayaway/tracing/internal/networking/models/ParametersModel;

    move-result-object v0

    invoke-virtual {v0}, Lfct/inesctec/stayaway/tracing/internal/networking/models/ParametersModel;->getFactorLow()F

    move-result v3

    invoke-virtual {v8}, Lfct/inesctec/stayaway/tracing/internal/networking/models/ConfigResponseModel;->getParameters()Lfct/inesctec/stayaway/tracing/internal/networking/models/ParametersModel;

    move-result-object v0

    invoke-virtual {v0}, Lfct/inesctec/stayaway/tracing/internal/networking/models/ParametersModel;->getFactorHigh()F

    move-result v4

    invoke-virtual {v8}, Lfct/inesctec/stayaway/tracing/internal/networking/models/ConfigResponseModel;->getParameters()Lfct/inesctec/stayaway/tracing/internal/networking/models/ParametersModel;

    move-result-object v0

    invoke-virtual {v0}, Lfct/inesctec/stayaway/tracing/internal/networking/models/ParametersModel;->getTriggerThreshold()I

    move-result v5

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lorg/dpppt/android/sdk/DP3T;->setMatchingParameters(Landroid/content/Context;IIFFI)V

    return-void
.end method
