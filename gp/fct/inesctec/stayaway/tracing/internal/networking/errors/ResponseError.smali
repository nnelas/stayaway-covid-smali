.class public Lfct/inesctec/stayaway/tracing/internal/networking/errors/ResponseError;
.super Ljava/lang/Throwable;
.source "ResponseError.java"


# instance fields
.field private response:Lokhttp3/Response;


# direct methods
.method public constructor <init>(Lokhttp3/Response;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    iput-object p1, p0, Lfct/inesctec/stayaway/tracing/internal/networking/errors/ResponseError;->response:Lokhttp3/Response;

    return-void
.end method
