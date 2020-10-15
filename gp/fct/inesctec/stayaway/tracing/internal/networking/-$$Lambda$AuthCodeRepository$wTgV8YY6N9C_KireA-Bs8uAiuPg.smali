.class public final synthetic Lfct/inesctec/stayaway/tracing/internal/networking/-$$Lambda$AuthCodeRepository$wTgV8YY6N9C_KireA-Bs8uAiuPg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field public static final synthetic INSTANCE:Lfct/inesctec/stayaway/tracing/internal/networking/-$$Lambda$AuthCodeRepository$wTgV8YY6N9C_KireA-Bs8uAiuPg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lfct/inesctec/stayaway/tracing/internal/networking/-$$Lambda$AuthCodeRepository$wTgV8YY6N9C_KireA-Bs8uAiuPg;

    invoke-direct {v0}, Lfct/inesctec/stayaway/tracing/internal/networking/-$$Lambda$AuthCodeRepository$wTgV8YY6N9C_KireA-Bs8uAiuPg;-><init>()V

    sput-object v0, Lfct/inesctec/stayaway/tracing/internal/networking/-$$Lambda$AuthCodeRepository$wTgV8YY6N9C_KireA-Bs8uAiuPg;->INSTANCE:Lfct/inesctec/stayaway/tracing/internal/networking/-$$Lambda$AuthCodeRepository$wTgV8YY6N9C_KireA-Bs8uAiuPg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 0

    invoke-static {p1}, Lfct/inesctec/stayaway/tracing/internal/networking/AuthCodeRepository;->lambda$new$0(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
