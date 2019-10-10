.class Lcom/xiaomi/mistatistic/sdk/BaseService$1;
.super Lcom/xiaomi/mistatistic/sdk/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/c;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/c;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/BaseService$1;->a:Lcom/xiaomi/mistatistic/sdk/c;

    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/BaseService$1;->a:Lcom/xiaomi/mistatistic/sdk/c;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/c;->a(Lcom/xiaomi/mistatistic/sdk/c;)Lcom/xiaomi/mistatistic/sdk/controller/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/g;->e()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mistatistic/sdk/data/c;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/BaseService$1;->a:Lcom/xiaomi/mistatistic/sdk/c;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/c;->a(Lcom/xiaomi/mistatistic/sdk/c;)Lcom/xiaomi/mistatistic/sdk/controller/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/g;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mistatistic/sdk/data/c;

    move-result-object p1

    return-object p1
.end method

.method public a(J)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/xiaomi/mistatistic/sdk/data/c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/BaseService$1;->a:Lcom/xiaomi/mistatistic/sdk/c;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/c;->a(Lcom/xiaomi/mistatistic/sdk/c;)Lcom/xiaomi/mistatistic/sdk/controller/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/g;->b(J)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
