.class Lfct/inesctec/stayaway/tracing/TracingManagerModule$1;
.super Ljava/lang/Object;
.source "TracingManagerModule.java"

# interfaces
.implements Lorg/dpppt/android/sdk/backend/ResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfct/inesctec/stayaway/tracing/TracingManagerModule;->informExposed(Ljava/util/Date;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/dpppt/android/sdk/backend/ResponseCallback<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lfct/inesctec/stayaway/tracing/TracingManagerModule;Landroid/content/Context;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    iput-object p2, p0, Lfct/inesctec/stayaway/tracing/TracingManagerModule$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lfct/inesctec/stayaway/tracing/TracingManagerModule$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exposed failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TracingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    const-string v1, "EN_CANCELLED"

    if-eqz v0, :cond_0

    iget-object p1, p0, Lfct/inesctec/stayaway/tracing/TracingManagerModule$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    instance-of v2, p1, Lfct/inesctec/stayaway/tracing/internal/networking/errors/ResponseError;

    if-eqz v2, :cond_1

    iget-object p1, p0, Lfct/inesctec/stayaway/tracing/TracingManagerModule$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-static {}, Lfct/inesctec/stayaway/tracing/TracingManagerModule;->access$000()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lfct/inesctec/stayaway/tracing/TracingManagerModule;->access$000()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    iget-object p1, p0, Lfct/inesctec/stayaway/tracing/TracingManagerModule$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {p1, v1, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    instance-of p1, p1, Lcom/google/android/gms/common/api/ApiException;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lfct/inesctec/stayaway/tracing/TracingManagerModule$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-static {}, Lfct/inesctec/stayaway/tracing/TracingManagerModule;->access$000()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lfct/inesctec/stayaway/tracing/TracingManagerModule;->access$000()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lfct/inesctec/stayaway/tracing/TracingManagerModule$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-static {}, Lfct/inesctec/stayaway/tracing/TracingManagerModule;->access$000()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lfct/inesctec/stayaway/tracing/TracingManagerModule;->access$000()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfct/inesctec/stayaway/tracing/TracingManagerModule$1;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 2

    const-string v0, "TracingManager"

    const-string v1, "Exposed success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lfct/inesctec/stayaway/tracing/TracingManagerModule$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;->getInstance(Landroid/content/Context;)Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;

    move-result-object v0

    invoke-virtual {v0}, Lfct/inesctec/stayaway/tracing/internal/storage/SecureStorage;->clearInformTimeAndCodeAndToken()V

    iget-object v0, p0, Lfct/inesctec/stayaway/tracing/TracingManagerModule$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method
