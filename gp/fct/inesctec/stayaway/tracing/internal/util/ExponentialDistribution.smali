.class public Lfct/inesctec/stayaway/tracing/internal/util/ExponentialDistribution;
.super Ljava/lang/Object;
.source "ExponentialDistribution.java"


# direct methods
.method public static sampleFromStandard()D
    .locals 4

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextDouble()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    neg-double v0, v0

    return-wide v0
.end method
