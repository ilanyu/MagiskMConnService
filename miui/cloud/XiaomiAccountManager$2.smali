.class final Lmiui/cloud/XiaomiAccountManager$2;
.super Lcom/xiaomi/micloudsdk/remote/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/cloud/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/micloudsdk/remote/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 27
    iput-object p2, p0, Lmiui/cloud/XiaomiAccountManager$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lmiui/cloud/XiaomiAccountManager$2;->b:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/remote/a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected synthetic a(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1}, Lmiui/cloud/XiaomiAccountManager$2;->b(Landroid/os/IBinder;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected b(Landroid/os/IBinder;)Ljava/lang/Boolean;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lmiui/cloud/XiaomiAccountManager$2;->a:Ljava/lang/String;

    iget-object v1, p0, Lmiui/cloud/XiaomiAccountManager$2;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1}, La/a/a/e/b;->a(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
