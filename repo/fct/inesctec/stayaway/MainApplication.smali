.class public Lfct/inesctec/stayaway/MainApplication;
.super Landroid/app/Application;
.source "MainApplication.java"

# interfaces
.implements Lcom/facebook/react/ReactApplication;


# instance fields
.field private final mReactNativeHost:Lcom/facebook/react/ReactNativeHost;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    new-instance v0, Lfct/inesctec/stayaway/MainApplication$1;

    invoke-direct {v0, p0, p0}, Lfct/inesctec/stayaway/MainApplication$1;-><init>(Lfct/inesctec/stayaway/MainApplication;Landroid/app/Application;)V

    iput-object v0, p0, Lfct/inesctec/stayaway/MainApplication;->mReactNativeHost:Lcom/facebook/react/ReactNativeHost;

    return-void
.end method


# virtual methods
.method public getReactNativeHost()Lcom/facebook/react/ReactNativeHost;
    .locals 1

    iget-object v0, p0, Lfct/inesctec/stayaway/MainApplication;->mReactNativeHost:Lcom/facebook/react/ReactNativeHost;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/soloader/SoLoader;->init(Landroid/content/Context;Z)V

    invoke-static {p0}, Lfct/inesctec/stayaway/tracing/TracingManagerModule;->init(Landroid/content/Context;)V

    return-void
.end method
