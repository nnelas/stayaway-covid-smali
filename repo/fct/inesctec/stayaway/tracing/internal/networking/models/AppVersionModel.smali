.class public Lfct/inesctec/stayaway/tracing/internal/networking/models/AppVersionModel;
.super Ljava/lang/Object;
.source "AppVersionModel.java"


# instance fields
.field private android:Lfct/inesctec/stayaway/tracing/internal/networking/models/VersionModel;

.field private ios:Lfct/inesctec/stayaway/tracing/internal/networking/models/VersionModel;


# direct methods
.method public constructor <init>(Lfct/inesctec/stayaway/tracing/internal/networking/models/VersionModel;Lfct/inesctec/stayaway/tracing/internal/networking/models/VersionModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfct/inesctec/stayaway/tracing/internal/networking/models/AppVersionModel;->ios:Lfct/inesctec/stayaway/tracing/internal/networking/models/VersionModel;

    iput-object p2, p0, Lfct/inesctec/stayaway/tracing/internal/networking/models/AppVersionModel;->android:Lfct/inesctec/stayaway/tracing/internal/networking/models/VersionModel;

    return-void
.end method


# virtual methods
.method public getAndroidVersion()Lfct/inesctec/stayaway/tracing/internal/networking/models/VersionModel;
    .locals 1

    iget-object v0, p0, Lfct/inesctec/stayaway/tracing/internal/networking/models/AppVersionModel;->android:Lfct/inesctec/stayaway/tracing/internal/networking/models/VersionModel;

    return-object v0
.end method

.method public getIOSVersion()Lfct/inesctec/stayaway/tracing/internal/networking/models/VersionModel;
    .locals 1

    iget-object v0, p0, Lfct/inesctec/stayaway/tracing/internal/networking/models/AppVersionModel;->ios:Lfct/inesctec/stayaway/tracing/internal/networking/models/VersionModel;

    return-object v0
.end method
