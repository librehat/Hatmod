.class Landroid/webkit/CookieManager$Cookie;
.super Ljava/lang/Object;
.source "CookieManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/CookieManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Cookie"
.end annotation


# static fields
.field static final MODE_DELETED:B = 0x2t

.field static final MODE_NEW:B = 0x0t

.field static final MODE_NORMAL:B = 0x1t

.field static final MODE_REPLACED:B = 0x3t


# instance fields
.field domain:Ljava/lang/String;

.field expires:J

.field lastAcessTime:J

.field lastUpdateTime:J

.field mode:B

.field name:Ljava/lang/String;

.field path:Ljava/lang/String;

.field secure:Z

.field value:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 146
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 147
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "defaultDomain"
    .parameter "defaultPath"

    .prologue
    .line 149
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    .line 151
    iput-object p2, p0, Landroid/webkit/CookieManager$Cookie;->path:Ljava/lang/String;

    .line 152
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/webkit/CookieManager$Cookie;->expires:J

    .line 153
    return-void
.end method


# virtual methods
.method domainMatch(Ljava/lang/String;)Z
    .registers 8
    .parameter "urlHost"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 166
    iget-object v4, p0, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 167
    iget-object v4, p0, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 168
    iget-object v4, p0, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    .line 169
    .local v0, len:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 170
    .local v1, urlLen:I
    add-int/lit8 v4, v0, -0x1

    if-le v1, v4, :cond_30

    .line 172
    sub-int v4, v1, v0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_31

    .line 179
    .end local v0           #len:I
    .end local v1           #urlLen:I
    :cond_30
    :goto_30
    return v2

    .restart local v0       #len:I
    .restart local v1       #urlLen:I
    :cond_31
    move v2, v3

    .line 172
    goto :goto_30

    .end local v0           #len:I
    .end local v1           #urlLen:I
    :cond_33
    move v2, v3

    .line 176
    goto :goto_30

    .line 179
    :cond_35
    iget-object v2, p0, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_30
.end method

.method exactMatch(Landroid/webkit/CookieManager$Cookie;)Z
    .registers 7
    .parameter "in"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 160
    iget-object v1, p0, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    if-nez v1, :cond_31

    move v1, v2

    :goto_7
    iget-object v4, p1, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    if-nez v4, :cond_33

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_35

    move v0, v2

    .line 161
    .local v0, valuesMatch:Z
    :goto_10
    iget-object v1, p0, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    iget-object v4, p1, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    iget-object v1, p0, Landroid/webkit/CookieManager$Cookie;->path:Ljava/lang/String;

    iget-object v4, p1, Landroid/webkit/CookieManager$Cookie;->path:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    iget-object v1, p0, Landroid/webkit/CookieManager$Cookie;->name:Ljava/lang/String;

    iget-object v4, p1, Landroid/webkit/CookieManager$Cookie;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    if-eqz v0, :cond_37

    :goto_30
    return v2

    .end local v0           #valuesMatch:Z
    :cond_31
    move v1, v3

    .line 160
    goto :goto_7

    :cond_33
    move v4, v3

    goto :goto_c

    :cond_35
    move v0, v3

    goto :goto_10

    .restart local v0       #valuesMatch:Z
    :cond_37
    move v2, v3

    .line 161
    goto :goto_30
.end method

.method pathMatch(Ljava/lang/String;)Z
    .registers 9
    .parameter "urlPath"

    .prologue
    const/16 v6, 0x2f

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 184
    iget-object v4, p0, Landroid/webkit/CookieManager$Cookie;->path:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 185
    iget-object v4, p0, Landroid/webkit/CookieManager$Cookie;->path:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    .line 186
    .local v0, len:I
    if-nez v0, :cond_1d

    .line 187
    const-string/jumbo v2, "webkit"

    const-string v4, "Empty cookie path"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .end local v0           #len:I
    :cond_1c
    :goto_1c
    return v3

    .line 190
    .restart local v0       #len:I
    :cond_1d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 191
    .local v1, urlLen:I
    iget-object v4, p0, Landroid/webkit/CookieManager$Cookie;->path:Ljava/lang/String;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v6, :cond_37

    if-le v1, v0, :cond_37

    .line 193
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_35

    :goto_33
    move v3, v2

    goto :goto_1c

    :cond_35
    move v2, v3

    goto :goto_33

    :cond_37
    move v3, v2

    .line 195
    goto :goto_1c
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "domain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/CookieManager$Cookie;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/CookieManager$Cookie;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
