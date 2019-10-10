.class final Lmiui/cloud/XiaomiAccountManager$1;
.super Lcom/xiaomi/micloudsdk/remote/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/cloud/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/micloudsdk/remote/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 15
    iput-object p2, p0, Lmiui/cloud/XiaomiAccountManager$1;->a:Ljava/lang/String;

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

    .line 15
    invoke-virtual {p0, p1}, Lmiui/cloud/XiaomiAccountManager$1;->b(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected b(Landroid/os/IBinder;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lmiui/cloud/XiaomiAccountManager$1;->a:Ljava/lang/String;

    invoke-static {p1, v0}, La/a/a/e/b;->a(Landroid/os/IBinder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
