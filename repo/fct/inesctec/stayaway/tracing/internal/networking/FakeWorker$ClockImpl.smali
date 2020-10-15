.class public Lfct/inesctec/stayaway/tracing/internal/networking/FakeWorker$ClockImpl;
.super Ljava/lang/Object;
.source "FakeWorker.java"

# interfaces
.implements Lfct/inesctec/stayaway/tracing/internal/networking/FakeWorker$Clock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfct/inesctec/stayaway/tracing/internal/networking/FakeWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClockImpl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public syncInterval()J
    .locals 4

    invoke-static {}, Lfct/inesctec/stayaway/tracing/internal/util/ExponentialDistribution;->sampleFromStandard()D

    move-result-wide v0

    invoke-static {}, Lfct/inesctec/stayaway/tracing/internal/networking/FakeWorker;->access$000()F

    move-result v2

    float-to-double v2, v2

    div-double/2addr v0, v2

    const-wide v2, 0x4194997000000000L    # 8.64E7

    mul-double/2addr v2, v0

    double-to-long v2, v2

    return-wide v2
.end method
