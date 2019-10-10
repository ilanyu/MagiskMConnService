.class public Lcom/xiaomi/passport/uicontroller/NotificationWebView$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/uicontroller/NotificationWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;

.field private b:Landroid/content/Context;

.field private c:Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$NotificationEndListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/xiaomi/passport/uicontroller/NotificationWebView$Builder;
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView$Builder;->b:Landroid/content/Context;

    return-object p0
.end method

.method public a(Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;)Lcom/xiaomi/passport/uicontroller/NotificationWebView$Builder;
    .registers 2

    .line 111
    iput-object p1, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView$Builder;->a:Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;

    return-object p0
.end method

.method public a(Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$NotificationEndListener;)Lcom/xiaomi/passport/uicontroller/NotificationWebView$Builder;
    .registers 2

    .line 96
    iput-object p1, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView$Builder;->c:Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$NotificationEndListener;

    return-object p0
.end method

.method public a()Lcom/xiaomi/passport/uicontroller/NotificationWebView;
    .registers 11

    .line 101
    new-instance v9, Lcom/xiaomi/passport/uicontroller/NotificationWebView;

    iget-object v1, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView$Builder;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView$Builder;->a:Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;

    iget-object v2, v0, Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView$Builder;->a:Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;

    iget-boolean v3, v0, Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;->b:Z

    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView$Builder;->a:Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;

    iget-object v4, v0, Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView$Builder;->a:Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;

    iget-object v5, v0, Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView$Builder;->a:Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;

    iget-object v6, v0, Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;->e:Ljava/util/Map;

    iget-object v7, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView$Builder;->c:Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$NotificationEndListener;

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/xiaomi/passport/uicontroller/NotificationWebView;-><init>(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$NotificationEndListener;Lcom/xiaomi/passport/uicontroller/NotificationWebView$1;)V

    return-object v9
.end method
