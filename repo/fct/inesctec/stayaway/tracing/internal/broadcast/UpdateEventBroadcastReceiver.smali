.class public Lfct/inesctec/stayaway/tracing/internal/broadcast/UpdateEventBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UpdateEventBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static createExposedNotification(Landroid/content/Context;I)V
    .locals 6

    invoke-static {p0}, Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;->getInstance(Landroid/content/Context;)Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    invoke-static {p0}, Lfct/inesctec/stayaway/tracing/internal/util/NotificationUtil;->createNotificationChannel(Landroid/content/Context;)V

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lfct/inesctec/stayaway/MainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    const-string v4, "contact-channel"

    invoke-direct {v3, p0, v4}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v4, 0x7f0e00b2

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    const v4, 0x7f0e00b1

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    new-instance v5, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v5}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

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

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    const/16 v5, 0x2a

    invoke-virtual {v4, v5, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    invoke-virtual {v0, p1}, Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;->setLastShownContactId(I)V

    return-void
.end method

.method private static scheduleSyncErrorNotification(Landroid/content/Context;)V
    .locals 7

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lfct/inesctec/stayaway/tracing/internal/broadcast/SyncErrorBroadcastReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x2b

    const/high16 v3, 0x8000000

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/32 v5, 0xa4cb800

    add-long/2addr v3, v5

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v3, v4, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.dpppt.android.sdk.ACTION_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lfct/inesctec/stayaway/tracing/internal/broadcast/BroadcastHelper;->sendUpdateBroadcast(Landroid/content/Context;)V

    invoke-static {p1}, Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;->getInstance(Landroid/content/Context;)Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;

    move-result-object v0

    invoke-static {p1}, Lorg/dpppt/android/sdk/DP3T;->getStatus(Landroid/content/Context;)Lorg/dpppt/android/sdk/TracingStatus;

    move-result-object v1

    invoke-virtual {v1}, Lorg/dpppt/android/sdk/TracingStatus;->getInfectionStatus()Lorg/dpppt/android/sdk/InfectionStatus;

    move-result-object v2

    sget-object v3, Lorg/dpppt/android/sdk/InfectionStatus;->EXPOSED:Lorg/dpppt/android/sdk/InfectionStatus;

    if-ne v2, v3, :cond_3

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-virtual {v1}, Lorg/dpppt/android/sdk/TracingStatus;->getExposureDays()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/dpppt/android/sdk/models/ExposureDay;

    invoke-virtual {v6}, Lorg/dpppt/android/sdk/models/ExposureDay;->getExposedDate()Lorg/dpppt/android/sdk/models/DayDate;

    move-result-object v7

    invoke-virtual {v7}, Lorg/dpppt/android/sdk/models/DayDate;->getStartOfDayTimestamp()J

    move-result-wide v7

    cmp-long v7, v7, v3

    if-lez v7, :cond_1

    move-object v2, v6

    invoke-virtual {v6}, Lorg/dpppt/android/sdk/models/ExposureDay;->getExposedDate()Lorg/dpppt/android/sdk/models/DayDate;

    move-result-object v7

    invoke-virtual {v7}, Lorg/dpppt/android/sdk/models/DayDate;->getStartOfDayTimestamp()J

    move-result-wide v3

    :cond_1
    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;->getLastShownContactId()I

    move-result v5

    invoke-virtual {v2}, Lorg/dpppt/android/sdk/models/ExposureDay;->getId()I

    move-result v6

    if-eq v5, v6, :cond_3

    invoke-virtual {v2}, Lorg/dpppt/android/sdk/models/ExposureDay;->getId()I

    move-result v5

    invoke-static {p1, v5}, Lfct/inesctec/stayaway/tracing/internal/broadcast/UpdateEventBroadcastReceiver;->createExposedNotification(Landroid/content/Context;I)V

    :cond_3
    invoke-static {p1}, Lfct/inesctec/stayaway/tracing/internal/broadcast/UpdateEventBroadcastReceiver;->scheduleSyncErrorNotification(Landroid/content/Context;)V

    return-void
.end method
