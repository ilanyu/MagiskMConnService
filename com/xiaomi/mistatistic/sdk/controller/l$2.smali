.class Lcom/xiaomi/mistatistic/sdk/controller/l$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/controller/l;->a(Ljava/lang/String;JJIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lcom/xiaomi/mistatistic/sdk/controller/l;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/l;JJ)V
    .registers 6

    .line 99
    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/l$2;->c:Lcom/xiaomi/mistatistic/sdk/controller/l;

    iput-wide p2, p0, Lcom/xiaomi/mistatistic/sdk/controller/l$2;->a:J

    iput-wide p4, p0, Lcom/xiaomi/mistatistic/sdk/controller/l$2;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZZ)V
    .registers 9

    if-eqz p1, :cond_d

    .line 103
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/l$2;->c:Lcom/xiaomi/mistatistic/sdk/controller/l;

    iget-wide v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/l$2;->a:J

    iget-wide v3, p0, Lcom/xiaomi/mistatistic/sdk/controller/l$2;->b:J

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mistatistic/sdk/controller/l;->a(Lcom/xiaomi/mistatistic/sdk/controller/l;JJZ)V

    goto :goto_33

    .line 105
    :cond_d
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/l;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string p1, "RDUM"

    .line 106
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "upload failed, set Uploading "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/l;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_33
    return-void
.end method
