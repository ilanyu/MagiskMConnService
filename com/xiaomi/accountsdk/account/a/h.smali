.class public Lcom/xiaomi/accountsdk/account/a/h;
.super Lcom/xiaomi/accountsdk/account/a/a;
.source "SourceFile"


# instance fields
.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/accountsdk/account/a/a;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0, p1}, Lcom/xiaomi/accountsdk/account/a/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, -0x1

    .line 11
    invoke-direct {p0, v0, p2}, Lcom/xiaomi/accountsdk/account/a/a;-><init>(ILjava/lang/String;)V

    .line 12
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/a/h;->e:Ljava/lang/String;

    return-void
.end method
