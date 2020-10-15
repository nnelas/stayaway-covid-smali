.class public Lfct/inesctec/stayaway/tracing/internal/networking/CertificatePinning;
.super Ljava/lang/Object;
.source "CertificatePinning.java"


# static fields
.field private static final CERTIFICATE_PINNER_DISABLED:Lokhttp3/CertificatePinner;

.field private static final CERTIFICATE_PINNER_LIVE:Lokhttp3/CertificatePinner;

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
