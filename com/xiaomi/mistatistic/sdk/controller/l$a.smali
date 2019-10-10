.class public Lcom/xiaomi/mistatistic/sdk/controller/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mistatistic/sdk/controller/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/controller/l;


# direct methods
.method public constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/l;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/l$a;->a:Lcom/xiaomi/mistatistic/sdk/controller/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 67
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/l$a;->a:Lcom/xiaomi/mistatistic/sdk/controller/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/l;->a(Z)V

    return-void
.end method
