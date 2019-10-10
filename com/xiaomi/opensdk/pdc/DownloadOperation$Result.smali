.class public Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;
.super Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/opensdk/pdc/DownloadOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/opensdk/pdc/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;JLjava/lang/String;JLjava/lang/String;ZLjava/util/ArrayList;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;",
            "J",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/opensdk/pdc/j;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-direct/range {p0 .. p6}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;JLjava/lang/String;)V

    .line 62
    iput-wide p7, p0, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;->a:J

    .line 63
    iput-object p9, p0, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;->b:Ljava/lang/String;

    .line 64
    iput-boolean p10, p0, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;->c:Z

    .line 65
    iput-object p11, p0, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;->d:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    .line 39
    iget-wide v0, p0, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;->a:J

    return-wide v0
.end method

.method public a(I)Lcom/xiaomi/opensdk/pdc/j;
    .registers 3

    .line 55
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/opensdk/pdc/j;

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .registers 2

    .line 47
    iget-boolean v0, p0, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;->c:Z

    return v0
.end method

.method public d()I
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_c
    return v0
.end method
