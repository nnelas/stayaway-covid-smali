.class public Lfct/inesctec/stayaway/tracing/internal/networking/CertificatePinning;
.super Ljava/lang/Object;
.source "CertificatePinning.java"


# static fields
.field private static final CERTIFICATE_PINNER_DISABLED:Lokhttp3/CertificatePinner;

.field private static final CERTIFICATE_PINNER_LIVE:Lokhttp3/CertificatePinner;

.field private static final PREF_KEY_CERT_PINNING_ENABLED:Ljava/lang/String; = "certificate_pinning_enabled"

.field private static final PREF_NAME_DEBUG:Ljava/lang/String; = "debug"

.field private static isEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lokhttp3/CertificatePinner$Builder;

    invoke-direct {v0}, Lokhttp3/CertificatePinner$Builder;-><init>()V

    const-string v1, "sha256/KArAwbAlrVTa8DektoICjekhEwhJWKU39zEeo3SxzWA="

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "stayaway.incm.pt"

    invoke-virtual {v0, v2, v1}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    move-result-object v0

    const-string v1, "sha256/N36p2K8/nu2qtj9uNAIxjVv/GNlVgXggPVjdhLXbZQg="

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "stayaway.min-saude.pt"

    invoke-virtual {v0, v2, v1}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/CertificatePinner$Builder;->build()Lokhttp3/CertificatePinner;

    move-result-object v0

    sput-object v0, Lfct/inesctec/stayaway/tracing/internal/networking/CertificatePinning;->CERTIFICATE_PINNER_LIVE:Lokhttp3/CertificatePinner;

    new-instance v0, Lokhttp3/CertificatePinner$Builder;

    invoke-direct {v0}, Lokhttp3/CertificatePinner$Builder;-><init>()V

    invoke-virtual {v0}, Lokhttp3/CertificatePinner$Builder;->build()Lokhttp3/CertificatePinner;

    move-result-object v0

    sput-object v0, Lfct/inesctec/stayaway/tracing/internal/networking/CertificatePinning;->CERTIFICATE_PINNER_DISABLED:Lokhttp3/CertificatePinner;

    const/4 v0, 0x1

    sput-boolean v0, Lfct/inesctec/stayaway/tracing/internal/networking/CertificatePinning;->isEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCertificatePinner()Lokhttp3/CertificatePinner;
    .locals 1

    sget-boolean v0, Lfct/inesctec/stayaway/tracing/internal/networking/CertificatePinning;->isEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lfct/inesctec/stayaway/tracing/internal/networking/CertificatePinning;->CERTIFICATE_PINNER_LIVE:Lokhttp3/CertificatePinner;

    goto :goto_0

    :cond_0
    sget-object v0, Lfct/inesctec/stayaway/tracing/internal/networking/CertificatePinning;->CERTIFICATE_PINNER_DISABLED:Lokhttp3/CertificatePinner;

    :goto_0
    return-object v0
.end method

.method private static getDebugPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "debug"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static initDebug(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lfct/inesctec/stayaway/tracing/internal/networking/CertificatePinning;->getDebugPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-boolean v1, Lfct/inesctec/stayaway/tracing/internal/networking/CertificatePinning;->isEnabled:Z

    const-string v2, "certificate_pinning_enabled"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lfct/inesctec/stayaway/tracing/internal/networking/CertificatePinning;->isEnabled:Z

    return-void
.end method

.method public static isEnabled()Z
    .locals 1

    sget-boolean v0, Lfct/inesctec/stayaway/tracing/internal/networking/CertificatePinning;->isEnabled:Z

    return v0
.end method

.method public static setEnabled(ZLandroid/content/Context;)V
    .locals 2

    sput-boolean p0, Lfct/inesctec/stayaway/tracing/internal/networking/CertificatePinning;->isEnabled:Z

    invoke-static {p1}, Lfct/inesctec/stayaway/tracing/internal/networking/CertificatePinning;->getDebugPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "certificate_pinning_enabled"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
