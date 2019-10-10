.class Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$NetworkConnectivityChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkConnectivityChangedReceiver"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;


# direct methods
.method private constructor <init>(Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;)V
    .registers 2

    .line 400
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$NetworkConnectivityChangedReceiver;->a:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$1;)V
    .registers 3

    .line 400
    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$NetworkConnectivityChangedReceiver;-><init>(Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 403
    iget-object p2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$NetworkConnectivityChangedReceiver;->a:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils$NetworkConnectivityChangedReceiver;->a:Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;

    invoke-static {v0, p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->a(Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;Landroid/content/Context;)I

    move-result p1

    invoke-static {p2, p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;->a(Lcom/xiaomi/micloudsdk/micloudrichmedia/Utils;I)I

    return-void
.end method
