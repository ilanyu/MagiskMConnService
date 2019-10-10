.class public Lcom/xiaomi/accountsdk/utils/FidNonce;
.super Lcom/xiaomi/accountsdk/utils/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/utils/FidNonce$Builder;,
        Lcom/xiaomi/accountsdk/utils/FidNonce$Type;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "UTF-8"

.field private static final d:Ljava/lang/String; = "FidNonce"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/accountsdk/utils/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
