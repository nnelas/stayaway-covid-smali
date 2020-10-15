.class public Lfct/inesctec/stayaway/tracing/internal/util/WritableMapHelper;
.super Ljava/lang/Object;
.source "WritableMapHelper.java"


# direct methods
.method public static wrapTracingStatus(Lorg/dpppt/android/sdk/TracingStatus;)Lcom/facebook/react/bridge/WritableMap;
    .locals 8

    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    invoke-virtual {p0}, Lorg/dpppt/android/sdk/TracingStatus;->getLastSyncDate()J

    move-result-wide v1

    long-to-double v1, v1

    const-string v3, "lastSyncDate"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    invoke-virtual {p0}, Lorg/dpppt/android/sdk/TracingStatus;->getInfectionStatus()Lorg/dpppt/android/sdk/InfectionStatus;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "infectionStatus"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    new-instance v1, Lcom/facebook/react/bridge/WritableNativeArray;

    invoke-direct {v1}, Lcom/facebook/react/bridge/WritableNativeArray;-><init>()V

    invoke-virtual {p0}, Lorg/dpppt/android/sdk/TracingStatus;->getExposureDays()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/dpppt/android/sdk/models/ExposureDay;

    new-instance v4, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v4}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    invoke-virtual {v3}, Lorg/dpppt/android/sdk/models/ExposureDay;->getId()I

    move-result v5

    const-string v6, "id"

    invoke-interface {v4, v6, v5}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v3}, Lorg/dpppt/android/sdk/models/ExposureDay;->getExposedDate()Lorg/dpppt/android/sdk/models/DayDate;

    move-result-object v5

    invoke-virtual {v5}, Lorg/dpppt/android/sdk/models/DayDate;->getStartOfDayTimestamp()J

    move-result-wide v5

    long-to-double v5, v5

    const-string v7, "exposedDate"

    invoke-interface {v4, v7, v5, v6}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    invoke-virtual {v3}, Lorg/dpppt/android/sdk/models/ExposureDay;->getReportDate()J

    move-result-wide v5

    long-to-double v5, v5

    const-string v3, "reportDate"

    invoke-interface {v4, v3, v5, v6}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    invoke-interface {v1, v4}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    :cond_0
    const-string v2, "exposureDays"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    new-instance v1, Lcom/facebook/react/bridge/WritableNativeArray;

    invoke-direct {v1}, Lcom/facebook/react/bridge/WritableNativeArray;-><init>()V

    invoke-virtual {p0}, Lorg/dpppt/android/sdk/TracingStatus;->getErrors()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/dpppt/android/sdk/TracingStatus$ErrorState;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    goto :goto_1

    :cond_1
    const-string p0, "errors"

    invoke-interface {v0, p0, v1}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    return-object v0
.end method
