.class Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/accountsdk/futureservice/b;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/accountsdk/futureservice/b;


# direct methods
.method constructor <init>(Lcom/xiaomi/accountsdk/futureservice/b;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector$1;->a:Lcom/xiaomi/accountsdk/futureservice/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector$1;->a:Lcom/xiaomi/accountsdk/futureservice/b;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/futureservice/b;->a(Lcom/xiaomi/accountsdk/futureservice/b;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_b

    .line 83
    iget-object v0, p0, Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector$1;->a:Lcom/xiaomi/accountsdk/futureservice/b;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/futureservice/b;->c()V

    return-void

    :catchall_b
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/futureservice/ServerServiceConnector$1;->a:Lcom/xiaomi/accountsdk/futureservice/b;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/futureservice/b;->c()V

    throw v0
.end method
