.class Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/opensdk/pdc/PdcSyncer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Batch"
.end annotation


# instance fields
.field public a:Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/opensdk/pdc/j;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaomi/opensdk/pdc/k;I)V
    .registers 4

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    new-instance v0, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;

    invoke-direct {v0, p1}, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;-><init>(Lcom/xiaomi/opensdk/pdc/k;)V

    iput-object v0, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->a:Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;

    .line 176
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->b:Ljava/util/ArrayList;

    .line 177
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$Batch;->c:Ljava/util/ArrayList;

    return-void
.end method
