.class public interface abstract Lfct/inesctec/stayaway/tracing/internal/networking/AuthCodeService;
.super Ljava/lang/Object;
.source "AuthCodeService.java"


# virtual methods
.method public abstract getAccessToken(Lfct/inesctec/stayaway/tracing/internal/networking/models/AuthenticationCodeRequestModel;)Lretrofit2/Call;
    .param p1    # Lfct/inesctec/stayaway/tracing/internal/networking/models/AuthenticationCodeRequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfct/inesctec/stayaway/tracing/internal/networking/models/AuthenticationCodeRequestModel;",
            ")",
            "Lretrofit2/Call<",
            "Lfct/inesctec/stayaway/tracing/internal/networking/models/AuthenticationCodeResponseModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "accept: */*",
            "content-type: application/json"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/onset"
    .end annotation
.end method
