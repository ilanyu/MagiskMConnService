.class public Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;
.super Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/opensdk/pdc/UploadOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field private final a:Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

.field private final b:Lcom/xiaomi/opensdk/pdc/j;

.field private final c:Lcom/xiaomi/opensdk/pdc/j;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;JLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;Lcom/xiaomi/opensdk/pdc/j;Lcom/xiaomi/opensdk/pdc/j;)V
    .registers 10

    .line 30
    invoke-direct/range {p0 .. p6}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;JLjava/lang/String;)V

    .line 31
    iput-object p7, p0, Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;->a:Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    .line 32
    iput-object p8, p0, Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;->b:Lcom/xiaomi/opensdk/pdc/j;

    .line 33
    iput-object p9, p0, Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;->c:Lcom/xiaomi/opensdk/pdc/j;

    return-void
.end method


# virtual methods
.method public a()Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;->a:Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    return-object v0
.end method

.method public b()Lcom/xiaomi/opensdk/pdc/j;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;->b:Lcom/xiaomi/opensdk/pdc/j;

    return-object v0
.end method

.method public c()Lcom/xiaomi/opensdk/pdc/j;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;->c:Lcom/xiaomi/opensdk/pdc/j;

    return-object v0
.end method
