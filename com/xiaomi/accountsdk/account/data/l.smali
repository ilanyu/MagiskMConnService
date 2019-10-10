.class public Lcom/xiaomi/accountsdk/account/data/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/l;->a:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/xiaomi/accountsdk/account/data/l;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/l;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/l;->b:Ljava/lang/String;

    return-object v0
.end method
