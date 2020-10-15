.class public Lfct/inesctec/stayaway/tracing/internal/networking/models/AuthenticationCodeResponseModel;
.super Ljava/lang/Object;
.source "AuthenticationCodeResponseModel.java"


# instance fields
.field private accessToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfct/inesctec/stayaway/tracing/internal/networking/models/AuthenticationCodeResponseModel;->accessToken:Ljava/lang/String;

    return-object v0
.end method
