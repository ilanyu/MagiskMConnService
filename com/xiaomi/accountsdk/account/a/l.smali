.class public Lcom/xiaomi/accountsdk/account/a/l;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field private static final a:J = 0x1L


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "No such a user"

    .line 7
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
