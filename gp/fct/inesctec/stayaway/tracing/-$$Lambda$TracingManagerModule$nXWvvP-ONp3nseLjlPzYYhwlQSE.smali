.class public final synthetic Lfct/inesctec/stayaway/tracing/-$$Lambda$TracingManagerModule$nXWvvP-ONp3nseLjlPzYYhwlQSE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/facebook/react/bridge/Promise;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfct/inesctec/stayaway/tracing/-$$Lambda$TracingManagerModule$nXWvvP-ONp3nseLjlPzYYhwlQSE;->f$0:Lcom/facebook/react/bridge/Promise;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lfct/inesctec/stayaway/tracing/-$$Lambda$TracingManagerModule$nXWvvP-ONp3nseLjlPzYYhwlQSE;->f$0:Lcom/facebook/react/bridge/Promise;

    invoke-static {v0}, Lfct/inesctec/stayaway/tracing/TracingManagerModule;->lambda$start$0(Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method
