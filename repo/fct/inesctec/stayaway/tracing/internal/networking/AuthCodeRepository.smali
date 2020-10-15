.class public Lfct/inesctec/stayaway/tracing/internal/networking/AuthCodeRepository;
.super Ljava/lang/Object;
.source "AuthCodeRepository.java"


# instance fields
.field private authCodeService:Lfct/inesctec/stayaway/tracing/internal/networking/AuthCodeService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Lfct/inesctec/stayaway/tracing/internal/networking/-$$Lambda$AuthCodeRepository$wTgV8YY6N9C_KireA-Bs8uAiuPg;->INSTANCE:Lfct/inesctec/stayaway/tracing/internal/networking/-$$Lambda$AuthCodeRepository$wTgV8YY6N9C_KireA-Bs8uAiuPg;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    const/high16 v1, 0x500000

    new-instance v2, Lokhttp3/Cache;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    int-to-long v4, v1

    invoke-direct {v2, v3, v4, v5}, Lokhttp3/Cache;-><init>(Ljava/io/File;J)V

    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    invoke-static {}, Lfct/inesctec/stayaway/tracing/internal/networking/CertificatePinning;->getCertificatePinner()Lokhttp3/CertificatePinner;

    move-result-object v3

    invoke-virtual {v0, v3}, Lokhttp3/OkHttpClient$Builder;->certificatePinner(Lokhttp3/CertificatePinner;)Lokhttp3/OkHttpClient$Builder;

    new-instance v3, Lorg/dpppt/android/sdk/backend/UserAgentInterceptor;

    invoke-static {}, Lorg/dpppt/android/sdk/DP3T;->getUserAgent()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/dpppt/android/sdk/backend/UserAgentInterceptor;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

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

    const-class v4, Lfct/inesctec/stayaway/tracing/internal/networking/AuthCodeService;

    invoke-virtual {v3, v4}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfct/inesctec/stayaway/tracing/internal/networking/AuthCodeService;

    iput-object v4, p0, Lfct/inesctec/stayaway/tracing/internal/networking/AuthCodeRepository;->authCodeService:Lfct/inesctec/stayaway/tracing/internal/networking/AuthCodeService;

    return-void
.end method

.method static synthetic lambda$new$0(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p0, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getAccessToken(Lfct/inesctec/stayaway/tracing/internal/networking/models/AuthenticationCodeRequestModel;Lorg/dpppt/android/sdk/backend/ResponseCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfct/inesctec/stayaway/tracing/internal/networking/models/AuthenticationCodeRequestModel;",
            "Lorg/dpppt/android/sdk/backend/ResponseCallback<",
            "Lfct/inesctec/stayaway/tracing/internal/networking/models/AuthenticationCodeResponseModel;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lfct/inesctec/stayaway/tracing/internal/networking/AuthCodeRepository;->authCodeService:Lfct/inesctec/stayaway/tracing/internal/networking/AuthCodeService;

    invoke-interface {v0, p1}, Lfct/inesctec/stayaway/tracing/internal/networking/AuthCodeService;->getAccessToken(Lfct/inesctec/stayaway/tracing/internal/networking/models/AuthenticationCodeRequestModel;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lfct/inesctec/stayaway/tracing/internal/networking/AuthCodeRepository$1;

    invoke-direct {v1, p0, p2}, Lfct/inesctec/stayaway/tracing/internal/networking/AuthCodeRepository$1;-><init>(Lfct/inesctec/stayaway/tracing/internal/networking/AuthCodeRepository;Lorg/dpppt/android/sdk/backend/ResponseCallback;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public getAccessTokenSync(Lfct/inesctec/stayaway/tracing/internal/networking/models/AuthenticationCodeRequestModel;)Lfct/inesctec/stayaway/tracing/internal/networking/models/AuthenticationCodeResponseModel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfct/inesctec/stayaway/tracing/internal/networking/errors/ResponseError;
        }
    .end annotation

    iget-object v0, p0, Lfct/inesctec/stayaway/tracing/internal/networking/AuthCodeRepository;->authCodeService:Lfct/inesctec/stayaway/tracing/internal/networking/AuthCodeService;

    invoke-interface {v0, p1}, Lfct/inesctec/stayaway/tracing/internal/networking/AuthCodeService;->getAccessToken(Lfct/inesctec/stayaway/tracing/internal/networking/models/AuthenticationCodeRequestModel;)Lretrofit2/Call;

    move-result-object v0

    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfct/inesctec/stayaway/tracing/internal/networking/models/AuthenticationCodeResponseModel;

    return-object v1

    :cond_0
    new-instance v1, Lfct/inesctec/stayaway/tracing/internal/networking/errors/ResponseError;

    invoke-virtual {v0}, Lretrofit2/Response;->raw()Lokhttp3/Response;

    move-result-object v2

    invoke-direct {v1, v2}, Lfct/inesctec/stayaway/tracing/internal/networking/errors/ResponseError;-><init>(Lokhttp3/Response;)V

    throw v1
.end method
