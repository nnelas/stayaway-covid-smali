.class Lfct/inesctec/stayaway/tracing/internal/networking/AuthCodeRepository$1;
.super Ljava/lang/Object;
.source "AuthCodeRepository.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfct/inesctec/stayaway/tracing/internal/networking/AuthCodeRepository;->getAccessToken(Lfct/inesctec/stayaway/tracing/internal/networking/models/AuthenticationCodeRequestModel;Lorg/dpppt/android/sdk/backend/ResponseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lfct/inesctec/stayaway/tracing/internal/networking/models/AuthenticationCodeResponseModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callbackListener:Lorg/dpppt/android/sdk/backend/ResponseCallback;


# direct methods
.method constructor <init>(Lfct/inesctec/stayaway/tracing/internal/networking/AuthCodeRepository;Lorg/dpppt/android/sdk/backend/ResponseCallback;)V
    .locals 0

    iput-object p2, p0, Lfct/inesctec/stayaway/tracing/internal/networking/AuthCodeRepository$1;->val$callbackListener:Lorg/dpppt/android/sdk/backend/ResponseCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lfct/inesctec/stayaway/tracing/internal/networking/models/AuthenticationCodeResponseModel;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    iget-object p1, p0, Lfct/inesctec/stayaway/tracing/internal/networking/AuthCodeRepository$1;->val$callbackListener:Lorg/dpppt/android/sdk/backend/ResponseCallback;

    invoke-interface {p1, p2}, Lorg/dpppt/android/sdk/backend/ResponseCallback;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lfct/inesctec/stayaway/tracing/internal/networking/models/AuthenticationCodeResponseModel;",
            ">;",
            "Lretrofit2/Response<",
            "Lfct/inesctec/stayaway/tracing/internal/networking/models/AuthenticationCodeResponseModel;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lfct/inesctec/stayaway/tracing/internal/networking/AuthCodeRepository$1;->val$callbackListener:Lorg/dpppt/android/sdk/backend/ResponseCallback;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/dpppt/android/sdk/backend/ResponseCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_1

    new-instance p2, Lfct/inesctec/stayaway/tracing/internal/networking/errors/InvalidCodeError;

    invoke-direct {p2}, Lfct/inesctec/stayaway/tracing/internal/networking/errors/InvalidCodeError;-><init>()V

    invoke-virtual {p0, p1, p2}, Lfct/inesctec/stayaway/tracing/internal/networking/AuthCodeRepository$1;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lfct/inesctec/stayaway/tracing/internal/networking/errors/ResponseError;

    invoke-virtual {p2}, Lretrofit2/Response;->raw()Lokhttp3/Response;

    move-result-object p2

    invoke-direct {v0, p2}, Lfct/inesctec/stayaway/tracing/internal/networking/errors/ResponseError;-><init>(Lokhttp3/Response;)V

    invoke-virtual {p0, p1, v0}, Lfct/inesctec/stayaway/tracing/internal/networking/AuthCodeRepository$1;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
