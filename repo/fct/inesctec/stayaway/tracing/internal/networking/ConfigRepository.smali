.class public Lfct/inesctec/stayaway/tracing/internal/networking/ConfigRepository;
.super Ljava/lang/Object;
.source "ConfigRepository.java"


# instance fields
.field private configService:Lfct/inesctec/stayaway/tracing/internal/networking/ConfigService;

.field private secureStorage:Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const/high16 v1, 0x200000

    new-instance v2, Lokhttp3/Cache;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    int-to-long v4, v1

    invoke-direct {v2, v3, v4, v5}, Lokhttp3/Cache;-><init>(Ljava/io/File;J)V

    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    new-instance v3, Lretrofit2/Retrofit$Builder;

    invoke-direct {v3}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v3

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v4

    invoke-virtual {v3, v4}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v3

    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v4

    invoke-virtual {v3, v4}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v3

    const-class v4, Lfct/inesctec/stayaway/tracing/internal/networking/ConfigService;

    invoke-virtual {v3, v4}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfct/inesctec/stayaway/tracing/internal/networking/ConfigService;

    iput-object v4, p0, Lfct/inesctec/stayaway/tracing/internal/networking/ConfigRepository;->configService:Lfct/inesctec/stayaway/tracing/internal/networking/ConfigService;

    invoke-static {p1}, Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;->getInstance(Landroid/content/Context;)Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;

    move-result-object v4

    iput-object v4, p0, Lfct/inesctec/stayaway/tracing/internal/networking/ConfigRepository;->secureStorage:Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;

    return-void
.end method


# virtual methods
.method public getConfig()Lfct/inesctec/stayaway/tracing/internal/networking/models/ConfigResponseModel;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfct/inesctec/stayaway/tracing/internal/networking/errors/ResponseError;
        }
    .end annotation

    iget-object v0, p0, Lfct/inesctec/stayaway/tracing/internal/networking/ConfigRepository;->configService:Lfct/inesctec/stayaway/tracing/internal/networking/ConfigService;

    invoke-interface {v0}, Lfct/inesctec/stayaway/tracing/internal/networking/ConfigService;->getConfig()Lretrofit2/Call;

    move-result-object v0

    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lfct/inesctec/stayaway/tracing/internal/networking/ConfigRepository;->secureStorage:Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;->setLastConfigLoadSuccess(J)V

    iget-object v1, p0, Lfct/inesctec/stayaway/tracing/internal/networking/ConfigRepository;->secureStorage:Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;

    const/16 v2, 0x2743

    invoke-virtual {v1, v2}, Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;->setLastConfigLoadSuccessAppVersion(I)V

    iget-object v1, p0, Lfct/inesctec/stayaway/tracing/internal/networking/ConfigRepository;->secureStorage:Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;->setLastConfigLoadSuccessSdkInt(I)V

    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfct/inesctec/stayaway/tracing/internal/networking/models/ConfigResponseModel;

    return-object v1

    :cond_0
    new-instance v1, Lfct/inesctec/stayaway/tracing/internal/networking/errors/ResponseError;

    invoke-virtual {v0}, Lretrofit2/Response;->raw()Lokhttp3/Response;

    move-result-object v2

    invoke-direct {v1, v2}, Lfct/inesctec/stayaway/tracing/internal/networking/errors/ResponseError;-><init>(Lokhttp3/Response;)V

    throw v1
.end method
