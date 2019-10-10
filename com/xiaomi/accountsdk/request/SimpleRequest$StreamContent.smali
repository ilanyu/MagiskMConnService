.class public Lcom/xiaomi/accountsdk/request/SimpleRequest$StreamContent;
.super Lcom/xiaomi/accountsdk/request/SimpleRequest$HeaderContent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/request/SimpleRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamContent"
.end annotation


# instance fields
.field private a:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    .line 708
    invoke-direct {p0}, Lcom/xiaomi/accountsdk/request/SimpleRequest$HeaderContent;-><init>()V

    .line 709
    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/SimpleRequest$StreamContent;->a:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public d()Ljava/io/InputStream;
    .registers 2

    .line 713
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/SimpleRequest$StreamContent;->a:Ljava/io/InputStream;

    return-object v0
.end method

.method public e()V
    .registers 2

    .line 717
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/SimpleRequest$StreamContent;->a:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/utils/m;->a(Ljava/io/InputStream;)V

    return-void
.end method
