.class public final synthetic Lfct/inesctec/stayaway/tracing/internal/networking/-$$Lambda$FakeWorker$6bGj2V1Oh1ieyI9Qoh_4SDUmByo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfct/inesctec/stayaway/tracing/internal/networking/-$$Lambda$FakeWorker$6bGj2V1Oh1ieyI9Qoh_4SDUmByo;->f$0:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lfct/inesctec/stayaway/tracing/internal/networking/-$$Lambda$FakeWorker$6bGj2V1Oh1ieyI9Qoh_4SDUmByo;->f$0:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0}, Lfct/inesctec/stayaway/tracing/internal/networking/FakeWorker;->lambda$executeFakeRequest$0(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
