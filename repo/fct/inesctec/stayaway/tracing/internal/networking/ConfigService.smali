.class public interface abstract Lfct/inesctec/stayaway/tracing/internal/networking/ConfigService;
.super Ljava/lang/Object;
.source "ConfigService.java"


# virtual methods
.method public abstract getConfig()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lfct/inesctec/stayaway/tracing/internal/networking/models/ConfigResponseModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "config/defaults.json"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json"
        }
    .end annotation
.end method
