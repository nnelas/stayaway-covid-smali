.class public final Lfct/inesctec/stayaway/BuildConfig;
.super Ljava/lang/Object;
.source "BuildConfig.java"


# static fields
.field public static final APPLICATION_ID:Ljava/lang/String; = "fct.inesctec.stayaway.debug"

.field public static final APP_ID:Ljava/lang/String; = ""

.field public static final BACKEND_AUTH_CODE_URL:Ljava/lang/String; = ""

.field public static final BACKEND_BUCKET_URL:Ljava/lang/String; = ""

.field public static final BACKEND_CONFIG_URL:Ljava/lang/String; = ""

.field public static final BACKEND_PUBLIC_KEY:Ljava/lang/String; = ""

.field public static final BACKEND_REPORT_URL:Ljava/lang/String; = ""

.field public static final BUILD_TIME:J = 0x1752dad1c65L

.field public static final BUILD_TYPE:Ljava/lang/String; = "debug"

.field public static final DEBUG:Z

.field public static final DEV_HISTORY:Ljava/lang/String; = ""

.field public static final FLAVOR:Ljava/lang/String; = "production"

.field public static final IS_RELEASE:Ljava/lang/String; = ""

.field public static final IS_UI:Ljava/lang/String; = ""

.field public static final VERSION_CODE:I = 0x2743

.field public static final VERSION_NAME:Ljava/lang/String; = "1.0.5-debug"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "true"

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lfct/inesctec/stayaway/BuildConfig;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
