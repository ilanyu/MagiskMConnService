.class Lcom/xiaomi/micloudsdk/request/utils/DefaultRequestEnv$1;
.super Lcom/xiaomi/micloudsdk/remote/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/micloudsdk/request/utils/d;->d()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic a:Landroid/accounts/Account;

.field final synthetic b:Lcom/xiaomi/micloudsdk/request/utils/d;


# direct methods
.method constructor <init>(Lcom/xiaomi/micloudsdk/request/utils/d;Landroid/content/Context;Landroid/accounts/Account;)V
    .registers 4

    .line 111
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/request/utils/DefaultRequestEnv$1;->b:Lcom/xiaomi/micloudsdk/request/utils/d;

    iput-object p3, p0, Lcom/xiaomi/micloudsdk/request/utils/DefaultRequestEnv$1;->a:Landroid/accounts/Account;

    invoke-direct {p0, p2}, Lcom/xiaomi/micloudsdk/remote/a;-><init>(Landroid/content/Context;)V

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

    .line 111
    invoke-virtual {p0, p1}, Lcom/xiaomi/micloudsdk/request/utils/DefaultRequestEnv$1;->b(Landroid/os/IBinder;)Ljava/lang/String;

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

    .line 114
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/request/utils/DefaultRequestEnv$1;->a:Landroid/accounts/Account;

    invoke-static {p1, v0}, La/a/a/e/b;->a(Landroid/os/IBinder;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
