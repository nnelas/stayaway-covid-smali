.class public Lfct/inesctec/stayaway/tracing/internal/util/SpecialBatterySystemHelper;
.super Ljava/lang/Object;
.source "SpecialBatterySystemHelper.java"


# static fields
.field static manufacturersWithIssues:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static modelsWithAndroidOne:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "samsung"

    const-string v2, "huawei"

    const-string v3, "xiaomi"

    const-string v4, "oppo"

    const-string v5, "vivo"

    const-string v6, "lenovo"

    const-string v7, "sony"

    const-string v8, "asus"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lfct/inesctec/stayaway/tracing/internal/util/SpecialBatterySystemHelper;->manufacturersWithIssues:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "2.3"

    const-string v2, "3.1"

    const-string v3, "3.2"

    const-string v4, "4.2"

    const-string v5, "5.1"

    const-string v6, "5.3"

    const-string v7, "6"

    const-string v8, "7 plus"

    const-string v9, "7.1"

    const-string v10, "7.2"

    const-string v11, "8 sirocco"

    const-string v12, "8.1"

    const-string v13, "8.3"

    const-string v14, "mi a2"

    const-string v15, "mi a2 lite"

    const-string v16, "mi a3"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lfct/inesctec/stayaway/tracing/internal/util/SpecialBatterySystemHelper;->modelsWithAndroidOne:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasSpecialBatterySystem()Z
    .locals 4

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v2, Lfct/inesctec/stayaway/tracing/internal/util/SpecialBatterySystemHelper;->manufacturersWithIssues:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lfct/inesctec/stayaway/tracing/internal/util/SpecialBatterySystemHelper;->modelsWithAndroidOne:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method
