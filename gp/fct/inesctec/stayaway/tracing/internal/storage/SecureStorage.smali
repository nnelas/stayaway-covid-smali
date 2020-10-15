.class public Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;
.super Ljava/lang/Object;
.source "SecureStorage.java"


# static fields
.field private static instance:Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;


# instance fields
.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    sget-object v0, Landroidx/security/crypto/MasterKeys;->AES256_GCM_SPEC:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-static {v0}, Landroidx/security/crypto/MasterKeys;->getOrCreate(Landroid/security/keystore/KeyGenParameterSpec;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecureStorage"

    sget-object v2, Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;->AES256_SIV:Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;

    sget-object v3, Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;->AES256_GCM:Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;

    invoke-static {v1, v0, p1, v2, v3}, Landroidx/security/crypto/EncryptedSharedPreferences;->create(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;->prefs:Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;->prefs:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;
    .locals 1

    sget-object v0, Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;->instance:Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;

    if-nez v0, :cond_0

    new-instance v0, Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;

    invoke-direct {v0, p0}, Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;-><init>(Landroid/content/Context;)V

    sput-object v0, Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;->instance:Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;

    :cond_0
    sget-object p0, Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;->instance:Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;

    return-object p0
.end method


# virtual methods
.method public clearInformTimeAndCodeAndToken()V
    .locals 2

    iget-object v0, p0, Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "inform_time_req"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "inform_code_req"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "inform_token_req"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public getLastConfigLoadSuccess()J
    .locals 4

    iget-object v0, p0, Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "last_config_load_success"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastConfigLoadSuccessAppVersion()I
    .locals 3

    iget-object v0, p0, Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "last_config_load_success_app_version"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLastConfigLoadSuccessSdkInt()I
    .locals 3

    iget-object v0, p0, Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "last_config_load_success_sdk_int"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLastInformRequestTime()J
    .locals 4

    iget-object v0, p0, Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "inform_time_req"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastInformToken()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "inform_token_req"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastShownContactId()I
    .locals 3

    iget-object v0, p0, Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "last_shown_contact_id"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTDummy()J
    .locals 4

    iget-object v0, p0, Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "KEY_T_DUMMY"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public saveInformTimeAndCodeAndToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "inform_time_req"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "inform_code_req"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "inform_token_req"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLastConfigLoadSuccess(J)V
    .locals 2

    iget-object v0, p0, Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_config_load_success"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLastConfigLoadSuccessAppVersion(I)V
    .locals 2

    iget-object v0, p0, Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_config_load_success_app_version"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLastConfigLoadSuccessSdkInt(I)V
    .locals 2

    iget-object v0, p0, Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_config_load_success_sdk_int"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLastShownContactId(I)V
    .locals 2

    iget-object v0, p0, Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_shown_contact_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setTDummy(J)V
    .locals 2

    iget-object v0, p0, Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "KEY_T_DUMMY"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
