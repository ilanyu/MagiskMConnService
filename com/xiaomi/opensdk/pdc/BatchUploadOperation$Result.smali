.class public Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;
.super Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;JLjava/lang/String;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct/range {p0 .. p6}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;JLjava/lang/String;)V

    .line 39
    iput-object p7, p0, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_c
    return v0
.end method

.method public a(I)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;
    .registers 3

    .line 31
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    return-object p1
.end method
