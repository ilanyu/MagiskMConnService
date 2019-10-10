.class public Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/opensdk/pdc/SyncOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

.field private d:J

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;JLjava/lang/String;)V
    .registers 7

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-boolean p1, p0, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->a:Z

    .line 56
    iput-object p2, p0, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->b:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->c:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 58
    iput-wide p4, p0, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->d:J

    .line 59
    iput-object p6, p0, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public e()Z
    .registers 2

    .line 23
    iget-boolean v0, p0, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->a:Z

    return v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->e:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 3

    .line 31
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [reason : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 34
    :cond_26
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->b:Ljava/lang/String;

    return-object v0
.end method

.method public h()J
    .registers 3

    .line 42
    iget-wide v0, p0, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->d:J

    return-wide v0
.end method

.method public i()Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->c:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    return-object v0
.end method

.method public j()Z
    .registers 3

    .line 50
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;->c:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    sget-object v1, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->d:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
