.class Lcom/xiaomi/mistatistic/sdk/network/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/network/c;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/network/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/network/c;)V
    .registers 2

    .line 462
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/network/c$1;->a:Lcom/xiaomi/mistatistic/sdk/network/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 465
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/network/c$1;->a:Lcom/xiaomi/mistatistic/sdk/network/c;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/network/c;->a(Lcom/xiaomi/mistatistic/sdk/network/c;)V

    return-void
.end method
