.class public Lfct/inesctec/stayaway/tracing/internal/util/JwtUtil;
.super Ljava/lang/Object;
.source "JwtUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOnsetDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 6

    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ge v1, v3, :cond_0

    return-object v2

    :cond_0
    new-instance v1, Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v3, v0, v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    const-class v4, Lfct/inesctec/stayaway/tracing/internal/models/AccessTokenModel;

    invoke-virtual {v3, v1, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfct/inesctec/stayaway/tracing/internal/models/AccessTokenModel;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lfct/inesctec/stayaway/tracing/internal/models/AccessTokenModel;->getOnset()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    :try_start_0
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v5, "UTC"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v3}, Lfct/inesctec/stayaway/tracing/internal/models/AccessTokenModel;->getOnset()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/text/ParseException;->printStackTrace()V

    return-object v2

    :cond_1
    return-object v2
.end method
