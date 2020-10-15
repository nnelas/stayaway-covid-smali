.class public Lfct/inesctec/stayaway/tracing/internal/networking/models/ConfigResponseModel;
.super Ljava/lang/Object;
.source "ConfigResponseModel.java"


# instance fields
.field private message:Ljava/lang/String;

.field private parameters:Lfct/inesctec/stayaway/tracing/internal/networking/models/ParametersModel;

.field private versions:Lfct/inesctec/stayaway/tracing/internal/networking/models/AppVersionModel;


# direct methods
.method public constructor <init>(Lfct/inesctec/stayaway/tracing/internal/networking/models/AppVersionModel;Lfct/inesctec/stayaway/tracing/internal/networking/models/ParametersModel;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfct/inesctec/stayaway/tracing/internal/networking/models/ConfigResponseModel;->versions:Lfct/inesctec/stayaway/tracing/internal/networking/models/AppVersionModel;

    iput-object p2, p0, Lfct/inesctec/stayaway/tracing/internal/networking/models/ConfigResponseModel;->parameters:Lfct/inesctec/stayaway/tracing/internal/networking/models/ParametersModel;

    iput-object p3, p0, Lfct/inesctec/stayaway/tracing/internal/networking/models/ConfigResponseModel;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAndroidVersion()Lfct/inesctec/stayaway/tracing/internal/networking/models/VersionModel;
    .locals 1

    iget-object v0, p0, Lfct/inesctec/stayaway/tracing/internal/networking/models/ConfigResponseModel;->versions:Lfct/inesctec/stayaway/tracing/internal/networking/models/AppVersionModel;

    invoke-virtual {v0}, Lfct/inesctec/stayaway/tracing/internal/networking/models/AppVersionModel;->getAndroidVersion()Lfct/inesctec/stayaway/tracing/internal/networking/models/VersionModel;

    move-result-object v0

    return-object v0
.end method

.method public getIOSVersion()Lfct/inesctec/stayaway/tracing/internal/networking/models/VersionModel;
    .locals 1

    iget-object v0, p0, Lfct/inesctec/stayaway/tracing/internal/networking/models/ConfigResponseModel;->versions:Lfct/inesctec/stayaway/tracing/internal/networking/models/AppVersionModel;

    invoke-virtual {v0}, Lfct/inesctec/stayaway/tracing/internal/networking/models/AppVersionModel;->getIOSVersion()Lfct/inesctec/stayaway/tracing/internal/networking/models/VersionModel;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfct/inesctec/stayaway/tracing/internal/networking/models/ConfigResponseModel;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()Lfct/inesctec/stayaway/tracing/internal/networking/models/ParametersModel;
    .locals 1

    iget-object v0, p0, Lfct/inesctec/stayaway/tracing/internal/networking/models/ConfigResponseModel;->parameters:Lfct/inesctec/stayaway/tracing/internal/networking/models/ParametersModel;

    return-object v0
.end method

.method public getVersions()Lfct/inesctec/stayaway/tracing/internal/networking/models/AppVersionModel;
    .locals 1

    iget-object v0, p0, Lfct/inesctec/stayaway/tracing/internal/networking/models/ConfigResponseModel;->versions:Lfct/inesctec/stayaway/tracing/internal/networking/models/AppVersionModel;

    return-object v0
.end method
