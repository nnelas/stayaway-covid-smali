.class public final synthetic Lfct/inesctec/stayaway/tracing/-$$Lambda$TracingManagerModule$wf85a2oUe1K1zeKe7nvO3YoWYFg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/facebook/react/bridge/Promise;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfct/inesctec/stayaway/tracing/-$$Lambda$TracingManagerModule$wf85a2oUe1K1zeKe7nvO3YoWYFg;->f$0:Lcom/facebook/react/bridge/Promise;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lfct/inesctec/stayaway/tracing/-$$Lambda$TracingManagerModule$wf85a2oUe1K1zeKe7nvO3YoWYFg;->f$0:Lcom/facebook/react/bridge/Promise;

    check-cast p1, Ljava/lang/Exception;

    invoke-static {v0, p1}, Lfct/inesctec/stayaway/tracing/TracingManagerModule;->lambda$start$1(Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V

    return-void
.end method
