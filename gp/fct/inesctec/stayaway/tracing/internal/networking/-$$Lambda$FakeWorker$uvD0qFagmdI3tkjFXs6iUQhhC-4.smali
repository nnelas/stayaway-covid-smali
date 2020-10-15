.class public final synthetic Lfct/inesctec/stayaway/tracing/internal/networking/-$$Lambda$FakeWorker$uvD0qFagmdI3tkjFXs6iUQhhC-4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f$1:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfct/inesctec/stayaway/tracing/internal/networking/-$$Lambda$FakeWorker$uvD0qFagmdI3tkjFXs6iUQhhC-4;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lfct/inesctec/stayaway/tracing/internal/networking/-$$Lambda$FakeWorker$uvD0qFagmdI3tkjFXs6iUQhhC-4;->f$1:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lfct/inesctec/stayaway/tracing/internal/networking/-$$Lambda$FakeWorker$uvD0qFagmdI3tkjFXs6iUQhhC-4;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lfct/inesctec/stayaway/tracing/internal/networking/-$$Lambda$FakeWorker$uvD0qFagmdI3tkjFXs6iUQhhC-4;->f$1:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1}, Lfct/inesctec/stayaway/tracing/internal/networking/FakeWorker;->lambda$executeFakeRequest$1(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
