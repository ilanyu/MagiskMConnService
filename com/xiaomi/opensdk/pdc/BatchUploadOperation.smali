.class public Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;
.super Ljava/util/ArrayList;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/opensdk/pdc/SyncOperation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/xiaomi/opensdk/pdc/UploadOperation;",
        ">;",
        "Lcom/xiaomi/opensdk/pdc/SyncOperation;"
    }
.end annotation


# static fields
.field private static final a:J = 0x1L


# instance fields
.field private final b:Lcom/xiaomi/opensdk/pdc/k;


# direct methods
.method public constructor <init>(Lcom/xiaomi/opensdk/pdc/k;)V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_8

    .line 15
    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;->b:Lcom/xiaomi/opensdk/pdc/k;

    return-void

    .line 13
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "null parameters"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;->b:Lcom/xiaomi/opensdk/pdc/k;

    invoke-interface {v0, p0}, Lcom/xiaomi/opensdk/pdc/k;->a(Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;)Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/opensdk/pdc/h;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;->a()Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;

    move-result-object v0

    return-object v0
.end method
