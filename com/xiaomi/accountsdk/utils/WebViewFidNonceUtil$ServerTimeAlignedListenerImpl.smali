.class public final Lcom/xiaomi/accountsdk/utils/WebViewFidNonceUtil$ServerTimeAlignedListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$ServerTimeAlignedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/utils/WebViewFidNonceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServerTimeAlignedListenerImpl"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .registers 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/utils/WebViewFidNonceUtil$ServerTimeAlignedListenerImpl;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 21
    iget-object v0, p0, Lcom/xiaomi/accountsdk/utils/WebViewFidNonceUtil$ServerTimeAlignedListenerImpl;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    if-eqz v0, :cond_12

    .line 23
    new-instance v1, Lcom/xiaomi/accountsdk/utils/WebViewFidNonceUtil;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/utils/WebViewFidNonceUtil;-><init>()V

    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/utils/WebViewFidNonceUtil;->a(Landroid/webkit/WebView;)V

    :cond_12
    return-void
.end method
