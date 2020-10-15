.class public Lfct/inesctec/stayaway/tracing/internal/networking/models/VersionModel;
.super Ljava/lang/Object;
.source "VersionModel.java"


# instance fields
.field private build:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfct/inesctec/stayaway/tracing/internal/networking/models/VersionModel;->name:Ljava/lang/String;

    iput-object p2, p0, Lfct/inesctec/stayaway/tracing/internal/networking/models/VersionModel;->build:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBuild()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfct/inesctec/stayaway/tracing/internal/networking/models/VersionModel;->build:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfct/inesctec/stayaway/tracing/internal/networking/models/VersionModel;->name:Ljava/lang/String;

    return-object v0
.end method
