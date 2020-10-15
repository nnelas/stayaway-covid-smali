.class public Lfct/inesctec/stayaway/tracing/internal/networking/models/AuthenticationCodeRequestModel;
.super Ljava/lang/Object;
.source "AuthenticationCodeRequestModel.java"


# instance fields
.field private authorizationCode:Ljava/lang/String;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private fake:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfct/inesctec/stayaway/tracing/internal/networking/models/AuthenticationCodeRequestModel;->authorizationCode:Ljava/lang/String;

    iput p2, p0, Lfct/inesctec/stayaway/tracing/internal/networking/models/AuthenticationCodeRequestModel;->fake:I

    return-void
.end method
